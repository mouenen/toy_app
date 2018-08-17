# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/microposts/:user_id', to: 'microposts#mymicroposts'
  get 'users/comments/:user_id', to: 'comments#mycomments'
  resources :comments
  resources :microposts do
    resources :comments, only: %i[show create update destroy]
  end
  resources :categories
  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  resources :users
  root 'microposts#index'
end
