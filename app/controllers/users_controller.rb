class UsersController < ApplicationController
  before_action :authenticated_user!
  
  def new 
    @user = User.new
    render 'users/new'
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users'
    else
      render 'new'  
    end
  end
  def index
    @users = User.all
    render 'index'
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to '/users'
  end
  private
    def user_params
#      params.require(:user).permit(:name, :email, :password, :password_confirmation)
      params.permit(:name, :email, :password, :password_confirmation)
    end
    def authenticated_user!
      unless authenticated_user?
        redirect_to '/signin'
      end 
    end
end
