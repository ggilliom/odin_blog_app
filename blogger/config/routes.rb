Rails.application.routes.draw do
	
	root to: "articles#index" # defaults root view to the index view

	# Tells Rails an articles resource exists and the router should 
	# expect requests to follow the RESTful web interaction model.
	# Router will understand that something like
	# http://localhost:3000/articles means you're looking for a listing
	# of the articles, and http://localhost:3000/articles/new means
	# you're trying to create a new article.
	resources :articles do
		resources :comments
	end
	resources :tags

	resources :authors
	resources :author_sessions, only: [ :new, :create, :destroy ]

	get "login" => "author_sessions#new" # adds login_path as a path
	get "logout" => "author_sessions#destroy" # adds logout_path as a path
	# get "testing" => "articles#new" # adds testing_path as a path

end
