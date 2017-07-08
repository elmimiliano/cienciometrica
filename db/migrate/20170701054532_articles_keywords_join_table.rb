class ArticlesKeywordsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :keywords, :articles do |t|
      # t.index [:keyword_id, :article_id]
      # t.index [:article_id, :keyword_id]
    end
  end
end
