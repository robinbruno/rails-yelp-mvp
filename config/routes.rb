Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
end
