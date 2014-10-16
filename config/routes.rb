Rails.application.routes.draw do
  root 'main#index'


#Facebook auth roots
	get 'auth/:provider/callback', to: 'sessions#create'
	get 'auth/failure', to: redirect('/')
	get 'signout', to: 'sessions#destroy', as: 'signout'
	resources :sessions, only: [:create, :destroy]
	resource :home, only: [:show]
#	
end
