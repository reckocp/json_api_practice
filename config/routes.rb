Rails.application.routes.draw do
 resources :post
 resources :user

  namespace :api do
   resources :posts
   resources :users
  end
end
