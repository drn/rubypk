# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  root to: 'application#root'
  mount Sidekiq::Web => '/sidekiq'
end
