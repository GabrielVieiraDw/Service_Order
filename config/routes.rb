Rails.application.routes.draw do
  namespace :admins_office do
    get 'welcome/index'
  end
  namespace :users_office do
    get 'welcome/index'
  end
  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
