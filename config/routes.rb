Rails.application.routes.draw do
   root 'imageshares#index'
    devise_for :users
    resources :albums

end
