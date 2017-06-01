Rails.application.routes.draw do
  resources :hotels do
    resources :rooms
  end

  resources :guests
end
