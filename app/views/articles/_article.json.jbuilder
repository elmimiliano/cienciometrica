json.extract! article, :id, :title, :abstract, :section, :author_count, :pages, :created_at, :updated_at
json.url article_url(article, format: :json)
