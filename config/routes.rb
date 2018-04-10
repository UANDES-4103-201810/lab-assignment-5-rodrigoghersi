Rails.application.routes.draw do

  post "/users", to: "users#create"
  post "/tickets", to: "tickets#create"
  post "/events", to: "events#create"
  post "/places", to: "places#create"

  delete "/users", to: "users#destroy"
  delete "/tickets", to: "tickets#destroy"
  delete "/events", to: "events#destroy"
  delete "/Places", to: "places#destroy"

  get "/users", to: "users#show"
  get "/tickets", to: "tickets#show"
  get "/events", to: "events#show"
  get "/places", to: "places#show"

  patch "/users", to: "users#update"
  patch "/tickets", to: "tickets#update"
  patch "/events", to: "events#update"
  patch "/places", to: "places#update"

  post "/users/:user_id/tickets", to: "tickets#create"
 
  delete "/users/:user_id/tickets/:id", to: "tickets#destroy"

  get "/users/:user_id/tickets/:id", to: "tickets#show"

  patch "/users/:user_id/tickets/:id", to: "tickets#update"

end

