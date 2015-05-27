class IndexController < ApplicationController
  def index
    if authenticated_user?
      redirect_to '/concerts/show'
    else
      render 'sessions/new'
    end
  end
end
