class CreateReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :references do |t|
      t.integer :citing_article_id
      t.integer :cited_article_id

      t.timestamps
    end
  end
end
