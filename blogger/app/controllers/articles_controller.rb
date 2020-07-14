class ArticlesController < ApplicationController

	def index
		# @ makes it an instance variable. It is accessible
		# from both the controller and the view. Normally, it's
		# only available to methods within an instance. Rails
		# controllers transfer instance variables to the object
		# that renders the view template.
		# This view template must be created in app/views/articles
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

end
