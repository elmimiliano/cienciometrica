class CreateOrgUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :org_units do |t|
      t.string :name
      t.string :city
      t.string :post_code
      t.string :street
      t.string :country

      t.timestamps
    end
  end
end
