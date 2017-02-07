Rails.application.routes.draw do
  devise_for :users
  root 'application#index'

  devise_scope :user do
    authenticated do
      root to: '/flats/new', controller: :flats, action: :new
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
