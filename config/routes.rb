Rails.application.routes.draw do

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
  get 'events/index'
  resources :events do
    resources :lists, only: [:create, :destroy]
  end

  #Lists
  resources :lists, only: [:create, :destroy]

  get 'user/profile'

  #Home
  get 'home/index', as: :home

  #Banner
  resources :banners
end
