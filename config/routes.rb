Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show, :destroy]

  as :user do
    get 'users', :to => 'users#show', :as => :user_root # Rails 3
    post 'users/:id', to: 'users#show'
  end


end
