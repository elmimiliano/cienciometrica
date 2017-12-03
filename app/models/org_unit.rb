class OrgUnit < ApplicationRecord
	 has_and_belongs_to_many :organizations

  has_many :affiliations
  has_many :authorships, through: :affiliations
end
