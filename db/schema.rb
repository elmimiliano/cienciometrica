# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170702165226) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "abstract"
    t.string   "section"
    t.integer  "author_count"
    t.integer  "pages"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "articles_keywords", id: false, force: :cascade do |t|
    t.integer "keyword_id", null: false
    t.integer "article_id", null: false
  end

  create_table "authorships", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "person_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_authorships_on_article_id"
    t.index ["person_id"], name: "index_authorships_on_person_id"
  end

  create_table "clasifications", force: :cascade do |t|
    t.string   "field"
    t.string   "system"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clasifications_journals", id: false, force: :cascade do |t|
    t.integer "clasification_id", null: false
    t.integer "journal_id",       null: false
  end

  create_table "journals", force: :cascade do |t|
    t.string   "title"
    t.string   "abbreviation"
    t.string   "issn"
    t.integer  "org_unit_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "org_units", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "post_code"
    t.string   "street"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "org_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name",  null: false
    t.string   "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["last_name"], name: "index_people_on_last_name"
  end

  create_table "publications", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "journal_id"
    t.integer  "issue"
    t.integer  "volume"
    t.date     "publication_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["article_id"], name: "index_publications_on_article_id"
  end

  create_table "references", force: :cascade do |t|
    t.integer  "citing_article_id"
    t.integer  "cited_article_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
