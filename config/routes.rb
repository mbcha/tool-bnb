Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:new, :create]
    resources :messages, only: [:new, :create, :edit, :update]
  end
  resources :users, only: [:show, :destroy]
  resources :bookings, only: [:update]
  as :user do
    get 'users', :to => 'users#show', :as => :user_root # Rails 3
  end
end
