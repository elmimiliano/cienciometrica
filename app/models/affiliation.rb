class Affiliation < ApplicationRecord
  belongs_to :authorship
  belongs_to :org_units
  
  

end
