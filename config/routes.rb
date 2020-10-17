# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  controller :application do
    get 'count' => :count
  end
  root to: 'application#root'
  mount Sidekiq::Web => '/sidekiq'
end
