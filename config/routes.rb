Rails.application.routes.draw do

  get 'browser/incompatible', as: :browser_incompatible

  # Pending Events
  get 'clubevents/pending'

  get 'user/profile'

  #Home
  get 'home/index', as: :home

  #Banner
  resources :banners, only: [:create, :update]

  #Rails admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #Devise
  devise_for :users
  devise_scope :user do
    unauthenticated :user do
      root to: "devise/sessions#new"
    end
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  #Omniauth
  get 'auth/:provider/callback', to: 'sessions#new_oauth_session'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy_oauth_session', as: :signout
  resources :sessions, only: [:new_oauth_session, :destroy_oauth_session]

  #Events
  resources :events do
    resources :lists, only: [:create, :show, :destroy] do
      resources :listusers, only: [:create, :destroy]
    end
  end
  
  # Clubs
  resources :clubs do
    resources :musics, only: [:create, :destroy]
    resources :features, only: [:create, :destroy]
    resources :clubevents do
      resources :clublists, only: [:create, :show, :destroy] do
        resources :clublistusers, only: [:create, :destroy]
      end
    end
    resources :clubimages
  end
end
