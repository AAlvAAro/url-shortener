Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'urls#index'

  resources :urls, only: [:index, :show, :create]
end
