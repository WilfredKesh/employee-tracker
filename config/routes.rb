Rails.application.routes.draw do

  resources :audit_logs
  namespace :admin do
    resources :users
resources :posts
resources :admin_users

    root to: "users#index"
  end

  root to: "pages#home" 
    resources :posts do
    member do
      get :approve
    end
  end
  
  devise_for :users, skip: [:registrations]
  



end
