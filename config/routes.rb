Rails.application.routes.draw do
	root 'companies#index'
  resources :areas
  resources :companies do
  	resources :employees, only: [:create] 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
