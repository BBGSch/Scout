
Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :trainers do
      resources :trainings, only: [ :show, :new, :create ]
  end

  resources :trainings, only: [ :show, :edit, :update, :destroy ] do
    resources :sessions, only: [ :index, :new, :create]
  end

  resources :sessions, only: [ :show, :edit, :update, :destroy ] do
    resources :bookings, only: [ :create ]
  end

  resources :bookings, only: [ :index, :show, :destroy ]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
