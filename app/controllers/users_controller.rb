class UsersController < ApplicationController


	def index


		#User.paginate(page: params[:page], per_page: 5) 
    #@users = User.search(score).order("created_at DESC")
   	if ((params[:search]).present?) && (is_number? (params[:search]))
   		score = (params[:search]).to_i
    	@users = User.search(score)

    		if (User.search(score).exists?)
    			flash[:notice] = "Match found"
    			#format.html { render 'new'}

    		else
    			flash[:notice] = "not found"
    			redirect_to root_path
    		end
    		

 		else
 		# 	flash.now[:notice] = "list all Volunteers"
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

	def is_number?(obj)
        obj.to_s == obj.to_i.to_s
  end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password, :rating) #create a new user object
	end
end