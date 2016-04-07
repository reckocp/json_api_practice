Rails.application.routes.draw do
resources :users
resources :posts


  namespace :api do
   resources :users
   resources :posts
  end
end
