Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'static_pages#checklist'

  resources :users, except: [:destroy]

  get 'static_pages/checklist'
  get 'static_pages/moreInfo', as: 'moreInfo'
end
