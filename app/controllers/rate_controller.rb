class RateController < ApplicationController

  def new
    
  end

  def create

    #debugger
    #render 'new'
    user = User.find_by(email: params[:rate][:email].downcase) #all emails are downcase in out DB.
    
    if user #(params[:rate][:score]).present?

    # user.rating = (params[:rate][:score]).to_i
    # user.save
    flash[:success] = "Volunteer has been rated" 
    # render 'new'
    render 'new'

    else

    flash[:danger] = "not found" 
    flash[:success] = "Volunteer has been rated" 

    # flash[:danger] = "Please fill up email & rate"
    render 'new'

    end


      
  end

 


end