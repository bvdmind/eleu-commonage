Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/resources'

  get 'pages/contact'

  devise_for :users, controllers: { registrations: 'registrations' }

  get 'profile/show'

  devise_for :views

  root "posts#index"

  resources :profile, only: [:show]

  resources :posts do
    resources :comments
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
