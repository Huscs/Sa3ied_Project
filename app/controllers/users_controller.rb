class UsersController < ApplicationController


	def index

		@users = User.paginate(page: params[:page], per_page: 5)
		
	end

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

	def show

		@user = User.find(params[:id])
		
	end

	def edit

		@user =  User.find(params[:id])
		
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
		flash[:success] = "تم تحديث بياناتك بنجاح"
		redirect_to root_path
		else
		render 'edit'
		end
	end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password) #create a new user object
	end
end