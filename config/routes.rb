Rails.application.routes.draw do

  root "site#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/signup' => 'owners#new'
  post '/owners' => 'owners#create'

  resources :owners do
    resources :pets, only: [:index, :new, :create]
  end
  resources :pets, only: :show

end
