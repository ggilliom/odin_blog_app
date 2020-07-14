Rails.application.routes.draw do
	
	# Tells Rails an articles resource exists and the router should 
	# expect requests to follow the RESTful web interaction model.
	# Router will understand that something like
	# http://localhost:3000/articles means you're looking for a listing
	# of the articles, and http://localhost:3000/articles/new means
	# you're trying to create a new article.
	resources :articles


end
