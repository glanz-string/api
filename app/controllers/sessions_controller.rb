class SessionsController < ApplicationController
	def new


	end

  def create
    user = User.find_by(email: params[:email].downcase)
 

    if (user.authenticate(params[:password])) then
      authenticate_user
      redirect_to '/concerts'
    else
      render 'new'
    end
  end

  def destroy

  end
end
