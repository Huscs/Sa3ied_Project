class UsersController < ApplicationController



	def index


		#User.paginate(page: params[:page], per_page: 5)
		
    #@users = User.search(score).order("created_at DESC")
   	if (params[:search]).present?
   		score = (params[:search]).to_i
    	@users = User.search(score)

    		if (User.search(score).exists?) && score.between?(1,5)# found
    			flash[:success] = "Volunteer/s found"
    		else
    			flash.now[:danger] = "not found"
    		end
    		

 		else
 			flash.now[:success] = "list all Volunteers"
 			@users = User.all

 		end
 		
		
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
		params.require(:user).permit(:username, :email, :password, :rating) #create a new user object
	end
end