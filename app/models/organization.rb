class Organization < ApplicationRecord
	has_and_belongs_to_many :org_units
end
