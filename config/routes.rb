Rails.application.routes.draw do
  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/edit'

  resources :orders do
   resources :orderitems
  end


  resources :profiles
  
  
  devise_for :users do
   resources :orders
  end

  get 'checkout' => 'cart#createOrder'

  get 'home/index'
  get 'cart/index'
  root :to => "home#index"
  resources :sales
 # resources :movies
  resources :items

  get 'items/index'
  root 'item#index'  
  
   get '/Admin' => 'user#admin_login'
   get '/logout' => 'user#logout'
   
   get '/cart' => 'cart#index'
   get '/cart/clear' => 'cart#clearCart'
   get '/cart/:id' => 'cart#add'  
   get '/cart/remove/:id' => 'cart#remove'
     
   get '/signedinuserprofile' => 'profiles#signedinuserprofile'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
