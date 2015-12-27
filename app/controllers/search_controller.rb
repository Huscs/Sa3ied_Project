class SearchController < ApplicationController

def index

    @users = User.all

end


  def search
    if ((params[:search]).present?) && (is_number? (params[:search]))
      score = (params[:search]).to_i
      @users = User.search(score)

        if (@User)
          flash[:notice] = "Match found"

        else
          flash[:notice] = "not found"
        end

    else
      @users = User.all
      render 'search'

  end


end

end


def is_number?(obj)
        obj.to_s == obj.to_i.to_s
end