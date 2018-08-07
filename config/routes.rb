# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  get 'comments/index'
  resources :categories
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :microposts do
    resources :comments
  end
  resources :users
end
