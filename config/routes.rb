Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :customers
  resources :farms
  resources :products
  resources :purchases 
end
