Rails.application.routes.draw do
  resources :punchins
  resources :todos

  resources :employees
  post "/sessions" => "sessions#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
