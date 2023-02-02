# frozen_string_literal: true

Rails.application.routes.draw do
  get 'college/index'
  root 'college#index'

  resources :authors do
    resources :books
  end

  resources :faculties
  resources :students

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
