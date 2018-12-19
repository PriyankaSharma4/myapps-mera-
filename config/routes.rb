Rails.application.routes.draw do
  #current_cart 'cart', :controller => 'carts', :action => 'show', :id => 'current'

  get 'carts/show'
  
  resources :line_items
  resources :carts
  resources :products
  resources :categories
 
  root "products#index"
end
