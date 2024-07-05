Rails.application.routes.draw do
  
  resources :members do
    resources :account_numbers, only: [:new, :create]
    resources :alerts
    resources :requests
  end
  devise_for :users
  root 'pages#home'
  get '/search', to: 'search#search'
  get '/user_assigned', to: 'pages#user_assigned'
  get '/users', to: 'pages#users'
  get '/alerts', to: 'pages#index'
  get '/requests', to: 'pages#requests'
  resources :documents
  resources :request_templates
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
