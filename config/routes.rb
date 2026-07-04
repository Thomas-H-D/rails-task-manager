Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # index -> see all
  get "tasks", to: "tasks#index"
  # new -> create a new task
  get "tasks/new", to: "tasks#new", as: :new_task
  # details -> see details of task
  get "tasks/:id", to: "tasks#show", as: :task
  # create -> the POST version
  post "tasks", to: "tasks#create"
end
