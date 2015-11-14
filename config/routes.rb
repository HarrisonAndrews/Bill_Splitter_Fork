Rails.application.routes.draw do

  post "/signup", to: "registrations#create"
  delete "/signup", to: "registrations#delete"
  post "/login", to: "registrations#login"

  post 'bills', :to => "bills#create"
  get 'bills/:id', :to => "bills#show"
  put 'bills/:id', :to => "bills#update"
  patch 'bills/:id', :to => "bills#update"
  delete 'bills/:id', :to => "bills#delete"

end
