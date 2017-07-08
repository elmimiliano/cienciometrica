class CreateJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :abbreviation
      t.string :issn
      t.integer :org_unit_id

      t.timestamps
    end
  end
end
