Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  post '/payments', to: 'purchases#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
