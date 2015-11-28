class SessionsController < ApplicationController

	def new
		
	end

	def create

		#render 'new'
		#debugger
		user = User.find_by(email: params[:session][:email].downcase) #all emails are downcase in out DB.
		
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id # set by browser cookies
			flash[:success] = "اهلن بك .. تم تسجيل دخولك بنجاح"
			redirect_to root_path

		else
			# note: we can't use users validation since :session is not a call back model (do not call DB)
			## flash.now : is used for a single HTTP reqiuest
			flash.now[:danger] = "هناك خطأ في تسجيل الدخول , الرجاء التأكد من صحة بياناتك"
			render 'new'

		end		
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "تم تسجيل خروجك بنجاح"
		redirect_to root_path

	end

end