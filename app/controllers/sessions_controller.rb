class SessionsController < ApplicationController
	def new
    if authenticated_user?
      redirect_to_index
    end
	end

  def create
    user = User.find_by(email: params[:email].downcase) 

    return unless user.present?
    if (user.authenticate(params[:password])) then
      authenticate_user
      redirect_to_index
    else
      render 'new'
    end
  end

  def destroy
    unauthenticate_user
    redirect_to_index
  end
  
  def redirect_to_index
    redirect_to controller: 'index', action: 'index'
  end
end
