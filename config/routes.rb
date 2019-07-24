Rails.application.routes.draw do
  namespace :managers do
    resources :incident_recordings, except: [:show]
  end
  devise_for :managers
  devise_for :members

  authenticated :manager do
    root 'managers/incident_recordings#index', as: :authenticated_manager_root
  end

  authenticated :member do
    # root 'secret#index', as: :authenticated_member_root
  end

  root 'home#index'
end
