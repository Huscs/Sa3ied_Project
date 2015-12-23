class RateController < ApplicationController
#respond_to :html, :json
  def new
    
  end

  def create

    #debugger
    #render 'new'
    user = User.find_by(email: params[:rate][:email].downcase) #all emails are downcase in out DB.
    score = (params[:rate][:score]).to_i
    email = params[:rate][:email]
    flash[:alert] = "volunteer has been rated" 


    if user && !(email.empty?) && score.between?(1,5)

          user.rating = score
          user.save
          #render 'new'
          redirect_to volunteers_path          

    else
    flash.clear
    flash.now[:danger] = "please enter a valid email address & score" 
    render 'new'

    end


      
  end

end