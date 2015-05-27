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
		redirect_to '/concerts'
	end

	def new
		render 'concerts/new'
	end

	def delete
		
	end

  private
    def authenticated_user!
      unless authenticated_user?
        #redirect_to '/signin'
        redirect_to controller: 'signin' action: 'new'
      end
      
    end
end
