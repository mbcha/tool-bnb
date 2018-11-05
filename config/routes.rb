Rails.application.routes.draw do
  root to: 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings, only: [:index, :new, :create, :edit, :upload] do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show, :destroy]
end
