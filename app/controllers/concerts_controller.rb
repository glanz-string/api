class ConcertsController < ApplicationController
  before_action :authenticated_user!
	def index
	  @concerts = Concert.all
	  render 'concerts/index'
	end

	def create
	  concert = Concert.new
		concert.title = params[:title]
		concert.info = params[:info]
		concert.save
    redirect_to controller: 'concerts', action: 'index'
	end

	def new
		render 'concerts/new'
	end

	def delete
		
	end

  private
    def authenticated_user!
      unless authenticated_user?
        redirect_to :controller => 'sessions', :action => 'new'
      end
      
    end
end
