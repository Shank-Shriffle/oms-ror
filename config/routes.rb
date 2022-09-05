Rails.application.routes.draw do
  devise_for :users
  resources :users, :admin, :customer
  root 'static_pages#home'
  resources :products
  resources :orders do
    resources :order_products
  end
end
