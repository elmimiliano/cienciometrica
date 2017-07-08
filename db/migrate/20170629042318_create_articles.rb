class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :abstract
      t.string :type
      t.integer :author_count
      t.integer :pages

      t.timestamps
    end
  end
end
