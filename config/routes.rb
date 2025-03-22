Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get '/home/about' => 'home#about', as: "about"
  
  resources :books
  resources :users, obly: [:show, :index, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end