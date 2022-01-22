Rails.application.routes.draw do
  root to: 'tasks#index'

  resources :tasks
  resources :users, only: [:create, :new]
  resources :sessions, only: [:new, :create, :destroy]
end