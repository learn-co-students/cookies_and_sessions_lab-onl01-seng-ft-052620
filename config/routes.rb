Rails.application.routes.draw do
  resources :products, only: [:index]
  
  get '/', to: 'products#index'
  post '/add', to: 'products#add'
end
