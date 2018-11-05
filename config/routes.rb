Rails.application.routes.draw do
  root to: 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show, :destroy]
end
