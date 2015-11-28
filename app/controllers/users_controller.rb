class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		#debugger
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to Sa3ied project #{@user.username}"
			redirect_to root_path
		else
			render 'new' # display error msg
		end

	end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password) #create a new user object
	end
end