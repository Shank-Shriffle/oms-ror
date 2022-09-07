Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  resources :users, :admin, :customer
  root 'static_pages#home'
  resources :products
  resources :orders
  resources :order_products
end
