Rails.application.routes.draw do
 resources :posts
 resources :admins
 root "posts#index"  
end
