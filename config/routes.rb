# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams, only: %i[index show]

  # get '/teams', to: 'teams#index'
  # get '/teams/:id', to: 'teams#show', id: /\d+/

  root to: 'teams#index'
end
