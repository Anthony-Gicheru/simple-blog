Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :posts do
    resource :cover_image, only: [:destroy], module: :post
  end
  # get '/posts/new', to: 'posts#new', as: :new_post
  # get '/posts/:id/edit', to: 'posts#edit', as: :edit_post
  # get '/posts/:id', to: 'posts#show', as: :post
  # patch '/posts/:id', to: 'posts#update'
  # delete '/posts/:id', to: 'posts#destroy'
  # post '/posts', to: 'posts#create', as: :posts

  # Defines the root path route ("/")
  root "posts#index"
end
