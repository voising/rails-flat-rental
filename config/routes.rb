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
end
