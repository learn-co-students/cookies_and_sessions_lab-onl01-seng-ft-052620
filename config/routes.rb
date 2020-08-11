Rails.application.routes.draw do

  get '/', to: "products#index", as: "home"
  post '/add', to: "products#add"

end
