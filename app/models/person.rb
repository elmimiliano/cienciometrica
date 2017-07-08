class Person < ApplicationRecord
	has_many :authorships
	has_many :articles, through: :authorships 
end
