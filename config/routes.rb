Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'static_pages#home'
  resources :products
end
