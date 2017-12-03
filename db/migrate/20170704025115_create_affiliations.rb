class CreateAffiliations < ActiveRecord::Migration[5.0]
  def change
    create_table :affiliations do |t|
      t.references :authorship, foreign_key: true
      t.references :org_units, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
