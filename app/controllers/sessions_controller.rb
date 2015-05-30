class SessionsController < ApplicationController
	def new
    if authenticated_user?
      redirect_to_index
    end
	end

  def create
    user = User.find_by(email: params[:email].downcase) 

    if (user.authenticate(params[:password])) then
      authenticate_user
      redirect_to_index
    else
      render 'new'
    end
  end

  def destroy

  end
  
  def redirect_to_index
    redirect_to controller: 'concerts', action: 'index'
  end
end
