Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/show'
  get 'todos/create'
  get 'todos/update'
  get 'todos/destroy'
  get 'employees/index'
  get 'employees/show'
  get 'employees/create'
  get 'employees/update'
  get 'employees/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
