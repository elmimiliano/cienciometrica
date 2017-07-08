class CambiarTypePorSectionEnArticulos < ActiveRecord::Migration[5.0]
  def change
	rename_column :articles, :type, :section
  end
end
