Rails.application.routes.draw do
	
	mount ActionCable.server => '/cable'
	resources :chats
	resources :articles
	post 'chats/index'
	get 'static_pages/home'
	get 'static_pages/help'
	devise_for :users, :controllers => { registrations: 'users/registrations' }
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'chats#index'
end
