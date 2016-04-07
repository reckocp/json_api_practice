Rails.application.routes.draw do
 resources: user
 resources: post

  namespace :api do
   resources :posts
   resources :users
  end
end
