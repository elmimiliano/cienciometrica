Rails.application.routes.draw do
  resources :affiliations
  resources :organizations
  resources :org_units
  resources :keywords
  resources :clasifications
  resources :journals
  resources :publications
  resources :references
  resources :authorships
  resources :articles
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
