Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "yachts", to: "yachts#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :yachts do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy] do
    get "show", to: "bookings#show", as: :show
  end
end
