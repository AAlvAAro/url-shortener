Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'urls#index'

  get '/:id' => 'urls#show'

  resources :urls, only: [:index, :create]
end
