# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :microposts do
    resources :comments, only: %i[create update destroy]
  end
  resources :categories
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users
  root 'users#index'
end
