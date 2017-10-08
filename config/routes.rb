Rails.application.routes.draw do
  root to: 'static_pages#checklist'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :users, except: [:destroy]

  get 'checklists/current', as: 'checklist'
  get 'checklists', to: 'checklists#index', as: 'checklists'
  put 'checklists/:id', to: 'checklists#update'
  get 'checklists/:id/edit', to: 'checklists#edit'

  get 'static_pages/moreInfo', as: 'moreInfo'
end
