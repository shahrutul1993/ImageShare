Rails.application.routes.draw do
   root 'imageshares#index'
    devise_for :users
    resources :albums
    resources :images, only: [:index, :new, :create]

end
