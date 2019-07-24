Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  namespace :members do
    get 'reported_incidents/index'
  end

  namespace :managers do
    resources :incident_recordings, except: [:show]
    resources :members, only: [:index]
  end

  devise_for :managers
  devise_for :members

  authenticated :manager do
    root 'managers/incident_recordings#index', as: :authenticated_manager_root
  end

  authenticated :member do
    root 'members/reported_incidents#index', as: :authenticated_member_root
  end

  root 'home#index'
end
