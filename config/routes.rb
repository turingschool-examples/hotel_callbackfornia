Rails.application.routes.draw do
  root 'sessions#new'
  resources :hotels do
    resources :rooms
  end

  resources :reservations, only: [:create]

  resources :guests do
    resources :reservations, only: [:index]
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
