class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.references :article, foreign_key: true
      t.integer :journal_id
      t.integer :issue
      t.integer :volume
      t.date :publication_date

      t.timestamps
    end
  end
end
