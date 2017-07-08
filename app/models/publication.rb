class Publication < ApplicationRecord
  belongs_to :article
  belongs_to :journal
end
