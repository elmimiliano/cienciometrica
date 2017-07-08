class Article < ApplicationRecord
	has_many :authorships
	has_many :people, through: :authorships 

	def to_s
		title
	end

    has_many :referenciado_por, :class_name => "Reference", :foreign_key => "citing_article_id"
    has_many :citing_articles, :through => :referenciado_por, :source => :citing_article



    has_many :referencia, :class_name => "Reference", :foreign_key => "cited_article_id"
    has_many :cited_articles, :through => :referencia, :source => :cited_article
 
 	has_and_belongs_to_many :keywords

end
