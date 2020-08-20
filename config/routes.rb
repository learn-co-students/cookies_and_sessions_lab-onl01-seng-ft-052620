Rails.application.routes.draw do
  resources :products, only: :index
  post '/products/add', to: 'products#add'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
  get '/cart', to: 'application#cart'
end
