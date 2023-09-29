Rails.application.routes.draw do
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #get "/customer/:id", to: "customer#index" 
  #get "orders/:id", to: "orders#index" as: "orders"
  #resources :orders, :customer
  #get '/orders/:id', to: 'orders#index', as: 'order'
  resources :patients, :photos, :orders , :clients,:books
   #get '/patients/:id', to: 'patients#show'
   
  #get 'foobar(/:id)', to: 'patients#foobar'
  #get 'patients/:id/userid/:admin_id', to: 'patients#show'
  #  resources :books do
   resources :books, :customers
  # end
  

  

end
