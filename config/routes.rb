Rails.application.routes.draw do

  namespace :admin do
    resources :users
resources :posts
resources :admin_users

    root to: "users#index"
  end

  root to: "pages#home" 
  resources :posts
  
  devise_for :users, skip: [:registrations]
  



end
