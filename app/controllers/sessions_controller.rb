class SessionsController < ApplicationController
	def new


	end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
 

    if (user.authenticate(params[:session][:password])) then
      authenticate_user
    end



    @result = authenticated_user?

    # session[]
    # if user && user.authenticate(params[:session][:email])
    #   redirect_to 'users#show'
    # else
      render 'new'
    # end
  end

  def destroy

  end
end
