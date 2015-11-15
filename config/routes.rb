Rails.application.routes.draw do

  post "/signup", to: "registrations#create"
  delete "/signup", to: "registrations#delete"
  post "/login", to: "registrations#login"

  post "/bill", to: "bills#create"
  get "/bill", to: "bills#index"
  get "/bill/:id", to: "bills#show"
  delete "/bill/:id", to: "bills#destroy"
  put "/bill/:id", to: "bills#update"

  post "/roommates", to: "roommates#create"
  get "/bill", to: "roommates#index"
  get "/roommates/:id", to: "bills#show"
  delete "/roommates/:id", to: "bills#destroy"
  put "/roommates/:id", to: "bills#update"

end
