class OrgUnitsOrganizationsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :org_units, :organizations do |t|
      # t.index [:org_unit_id, :organization_id]
      t.index [:organization_id, :org_unit_id], unique: true, name: 'org_unitsOrganizations'
    end
  end
end
