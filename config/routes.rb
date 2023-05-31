Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '\search', to: 'items#search', as: 'search_items'
  # Defines the root path route ("/")
  # root "articles#index"
end
