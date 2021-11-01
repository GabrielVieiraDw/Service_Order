Rails.application.routes.draw do
  
  namespace :admins_office do
    get 'welcome/index'
  end
  namespace :users_office do
    get 'welcome/index'
  end
  devise_for :users
  devise_for :admins

  root to: 'welcome#index'
end
