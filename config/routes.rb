Rails.application.routes.draw do

  # get 'animals/index'
  # get 'animals/show'
  devise_for :users
  root to: "animals#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  #  root to: 'pages#index'


  resources :animals do
    collection do
      get :my_animals
    end
  end

  resources :bookings do
    collection do
      get :my_bookings
    end
  end

  resources :animals do
    resources :animal_abilities, only: [:new, :create]
    resources :bookings, only: [:new, :create, :index]
  end

end
