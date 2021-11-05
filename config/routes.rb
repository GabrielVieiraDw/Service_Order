Rails.application.routes.draw do
  
  devise_for :users
  root to: 'welcome#index'
  resources :cars
  resources :equipments
  resources :services
  resources :workorders
  resources :customers
end
