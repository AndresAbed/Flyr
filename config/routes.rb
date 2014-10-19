Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

devise_for :users
devise_scope :user do
  root to: "devise/sessions#new"
end

get 'auth/:provider/callback', to: 'sessions#create'
get 'auth/failure', to: redirect('/')
get 'signout', to: 'sessions#destroy', as: 'signout'

get 'home/show'
end
