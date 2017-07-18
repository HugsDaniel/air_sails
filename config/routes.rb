Rails.application.routes.draw do
  get 'trips/index'

  get 'trips/new'

  get 'trips/create'

  get 'trips/show'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :trips, only: [:new, :create, :show, :index] do
    resources :bookings, only: [:create]
  end
  resources :reservations, only: [] do
    member do
      patch 'accept'
      patch 'deny'
    end
  end
  resource :profile, only: [:show]
end
