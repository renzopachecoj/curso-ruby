Rails.application.routes.draw do
  get '/products', to:'products#index'
  get '/products/new', to: 'products#new', as: 'new_product'
  post '/products', to: 'products#create'
  get '/products/:id/edit', to: 'products#edit', as:'edit_product'
  get '/products/:id', to:'products#show', as:'product'
  patch 'products/:id', to: 'products#update'
  put '/product/:id', to: 'products#update'
  delete '/products/:id', to: 'products#delete'
  #resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end