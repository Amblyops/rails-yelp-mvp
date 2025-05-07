Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # get "restaurants" to: "restaurants#index"
  # get other routes that have not yet been fully taught
  # I DO NOT UNDERSTAND THE LINE BELOW ***********
  get "restaurants/index"
  resources :restaurants, only: :index
end

# Rails.application.routes.draw do
#   get "reviews/new"
#   get "reviews/create"
#   get "restaurants/index"
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Render dynamic PWA files from app/views/pwa/*
#   get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
#   get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

#   # Defines the root path route ("/")
#   # root "posts#index"
#   resources :restaurants, only: [:index, :show, :new, :create] do
#     resources :reviews, only: [:new, :create]
#   end

  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"#
# end
