Rails.application.routes.draw do
  get 'trainers/index'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/destroy'
  get 'training_sessions/index'
  get 'training_sessions/show'
  get 'training_sessions/new'
  get 'training_sessions/create'
  get 'training_sessions/edit'
  get 'training_sessions/update'
  get 'training_sessions/destroy'
  get 'trainings/show'
  get 'trainings/new'
  get 'trainings/create'
  get 'trainings/edit'
  get 'trainings/update'
  get 'trainings/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :trainers do
      resources :trainings, only: [ :index, :new, :create ]
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
