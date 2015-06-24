class IndexController < ApplicationController
  def index
    if authenticated_user?
      redirect_to controller: 'concerts', action: 'index'
    else
#      render 'sessions/new'
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end
