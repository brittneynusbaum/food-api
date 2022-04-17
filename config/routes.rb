Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/dishes" => "dishes#index"
  get "/dishes/:id" => "dishes#show"
  post "/dishes/" => "dishes#create"
  patch "/dishes/:id" => "dishes#update"
end
