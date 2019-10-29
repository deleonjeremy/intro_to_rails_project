# frozen_string_literal: true

Rails.application.routes.draw do
  get '/teams', to: 'teams#index'
  get '/teams/:id', to: 'teams#show', id: /\d+/

  root to: 'teams#index'
end
