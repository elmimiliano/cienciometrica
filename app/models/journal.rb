class Journal < ApplicationRecord
	 has_and_belongs_to_many :clasifications
end
