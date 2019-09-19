Rails.application.routes.draw do
  devise_for :users
	root to: "home#index"
	get "home/about" => "home#about"
	resources :books
	resources :users, only: [:show, :edit, :index, :update, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
