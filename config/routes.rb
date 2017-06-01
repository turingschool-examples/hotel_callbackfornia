Rails.application.routes.draw do
  root 'sessions#new'
  resources :hotels do
    resources :rooms
  end

  resources :guests

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
