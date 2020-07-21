class AuthorSessionsController < ApplicationController

	def new # renders the related form

	end

	def create # accepts the submission of that form
		if login(params[:email], params[:password])
			redirect_back_or_to(root_path, notice: "Logged in successfully.")
		else
			flash.now.alert = "Login failed."
			render action: :new
		end
	end

	def destroy
		logout
		redirect_to(:authors, notice: "Logged out!")
	end

end
