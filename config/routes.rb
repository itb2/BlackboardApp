Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  get "/feed" => "home#_feed"
  resources :users
  resources :user_infos
  recources :posts
end
