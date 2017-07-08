class Reference < ApplicationRecord
    belongs_to :cited_article,  :class_name => 'Article'
    belongs_to :citing_article, :class_name => 'Article'
end
