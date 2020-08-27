Rails.application.routes.draw do
	
	root 'posts#index', as: 'home'
	
	devise_for :users
	
	#get 'signup', to: 'users#new'
	resources :users, except: [:new]
	
	resources :posts do
		resources :comments
	end
	
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
