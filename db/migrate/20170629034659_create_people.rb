class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name, null: false
      t.string :sex

      t.timestamps
    end
    add_index :people, :last_name
  end
end
