Rails.application.routes.draw do
   root 'imageshares#index'
   # get '/albums', to: 'imageshares#show'
    devise_for :users
    resources :albums
    resources :images, only: [:index, :new, :create]

end
