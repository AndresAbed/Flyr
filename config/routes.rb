Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #Devise
  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  #Omniauth
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: :signout
  resources :sessions, only: [:create, :destroy]

  #Events
  resources :events do
    resources :lists, only: [:create, :show, :destroy] do
      resources :listusers, only: [:create, :destroy]
    end
  end
  
  # Clubs
  resources :clubs do
    resources :musics, only: [:create, :destroy]
    resources :features, only: [:create, :update]
    resources :clubevents do
      resources :clublists, only: [:create, :show, :destroy] do
        resources :clublistusers, only: [:create, :destroy]
      end
    end
  end

  # Pending Events
  get 'clubevents/pending'

  get 'user/profile'

  #Home
  get 'home/index', as: :home

  #Banner
  resources :banners
end
