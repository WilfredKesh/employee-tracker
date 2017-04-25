Rails.application.routes.draw do

    root to: "pages#home" 
  resources :posts
  devise_for :users, controllers: { sessions: "users/sessions" }
  



end
