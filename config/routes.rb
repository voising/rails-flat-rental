Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated do
      root to: 'flats#new'
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: 'unauthenticated_root'
    end
  end

  resources :flats
  resources :places
  resources :services

  resources :flats_services
  resources :flats_places

  resources :pictures do
    collection do
      post 'uploads' => 'pictures/uploads#create'
    end
  end
end
