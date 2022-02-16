Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# Read All
get "restaurants", to: "tasks#index"
# Create
get "restaurants/new", to: "restaurants#new"
post "restaurants", to: "restaurants#create"
# Read One
get "restaurants/:id", to: "restaurants#show", as: :restaurants
# update
get "restaurants/:id/edit", to: "restaurants#edit"
patch "restaurants/:id", to: "restaurants#update"
# Delete
delete "restaurants/:id", to: "restaurants#destroy"
end
