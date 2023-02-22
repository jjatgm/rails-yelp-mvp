# frozen_string_literal: true
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"
# In our MVP, a visitor cannot update / delete any restaurant or review.

Rails.application.routes.draw do
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
end
