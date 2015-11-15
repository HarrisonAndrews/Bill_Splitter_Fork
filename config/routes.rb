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
  get "/roommates/:id", to: "roommates#show"
  delete "/roommates/:id", to: "roommates#destroy"
  put "/roommates/:id", to: "roommates#update"

  post "/portions", to: "portions#create"
  get "/portions", to: "portions#index"
  get "/portions/:id", to: "portions#show"
  delete "/portions/:id", to: "portions#destroy"
  put "/portions/:id", to: "portions#update"

end
