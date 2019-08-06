Rails.application.routes.draw do
  # VERB 'PATH', to: 'CONTROLLER#ACTION', as: :prefix
  # READ
  get 'restaurants', to: 'restaurants#index', as: :restaurants
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant # for the form

  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # CREATE ( 2 steps )
  post 'restaurants', to: 'restaurants#create'

  # UPDATE
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurants#destroy'
end











