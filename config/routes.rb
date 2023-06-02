Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :items, only: %i[index show new create] do
    resources :bookings, only: %i[create]
  end

  get "/dashboard", to: "dashboard#main"
end
