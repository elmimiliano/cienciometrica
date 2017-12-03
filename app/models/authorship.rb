class Authorship < ApplicationRecord
  belongs_to :article, inverse_of: :authorships
  belongs_to :person
  


  has_many :affiliations
  has_many :org_units, through: :affiliations


end
