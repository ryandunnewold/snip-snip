Rails.application.routes.draw do
  resources :snippets

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  mount Avocado::Engine => '/api-docs', constraints: -> (_) { Rails.env.staging? }

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }

  namespace :api, defaults: { format: 'json' } do
    devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  end

  root to: 'snippets#index'

end
