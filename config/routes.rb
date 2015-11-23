Rails.application.routes.draw do
  get 'static/landing'

  resources :snippets

  get '/discover', to: 'discover#index', as: 'discover'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  mount Avocado::Engine => '/api-docs', constraints: -> (_) { Rails.env.staging? }

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }

  namespace :api, defaults: { format: 'json' } do
    devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  end

  authenticated :user do
    root to: "snippets#index", as: :authenticated_root
  end

  unauthenticated :user do
    root to: "static#landing"
  end
end
