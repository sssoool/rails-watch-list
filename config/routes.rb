Rails.application.routes.draw do
  # Define your application s per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path  ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, except:[:edit, :update] do
    resources :bookmarks, only: [:new, :create,]
    resources :comments, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :comments, only: :destroy
end
