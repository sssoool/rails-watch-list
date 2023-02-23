Rails.application.routes.draw do
  # Define your application s per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path  ("/")
  # root "articles#index"
  resources :lists

end
