Rails.application.routes.draw do
  resources :employees
  resources :cake, only: [:create, :index]
  namespace :charts do
   
  end  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "employees#index"
end
