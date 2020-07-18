class ArticlesController < ApplicationController
	include ArticlesHelper

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
		
		@comment = Comment.new
		@comment.article_id = @article_id
	end

	def new
		@article = Article.new
	end

	def create
		# @article = Article.new(params[:article]) (passes whole hash, but not safe)
		# @article.title = params[:article][:title] (Unnecessary)
		# @article.body = params[:article][:body] (Unnecessary)
		@article = Article.new(article_params) # uses helper method and require/permit
		@article.save

		flash.notice = "Article '#{@article.title}' Created!"

		redirect_to article_path(@article)
	end

	def update
		@article = Article.find(params[:id])
		@article.update(article_params) # calls helper method

		flash.notice = "Article '#{@article.title}' Updated!"

		redirect_to article_path(@article) # to show
	end

	def edit
		@article = Article.find(params[:id])
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		flash.notice = "Article '#{@article.title}' Deleted!"

		redirect_to articles_path # articles_path is a method – 
								  # somehow gets back to index page
								  # rake routes shows articles as
								  # a PREFIX for index, and this
								  # redirects to the index page
	end

end
