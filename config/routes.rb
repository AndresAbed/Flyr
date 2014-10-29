Rails.application.routes.draw do

devise_for :users
devise_scope :user do
  root to: "devise/sessions#new"
  match '/sessions/user', to: 'devise/sessions#create', via: :post
end

get 'auth/:provider/callback', to: 'sessions#create'
get 'auth/failure', to: redirect('/')
get 'signout', to: 'sessions#destroy', as: 'signout'
resources :sessions, only: [:create, :destroy]

get '/home/index', as: :home
end
