class CreateAuthorships < ActiveRecord::Migration[5.0]
  def change
    create_table :authorships do |t|
      t.references :article, foreign_key: true
      t.references :person, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
