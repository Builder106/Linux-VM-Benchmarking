Rails.application.routes.draw do
   get "home/index"
   
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   
   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
   # Can be used by load balancers and uptime monitors to verify that the app is live.
   get "up" => "rails/health#show", as: :rails_health_check
   
   # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
   get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
   get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
   
   # Defines the root path route ("/")
   root "home#index"
   
   resources :reports do
     collection do
       get :compare
     end
     member do
       get :download
     end
   end
   
   resources :benchmarks
   
   namespace :api do
     resources :reports, only: [:index, :show, :create]
     resources :benchmarks, only: [:create]
   end
   
   devise_for :users
   
   # Additional routes for user accounts and access control
   resources :users, only: [:index, :show, :edit, :update, :destroy]
 end