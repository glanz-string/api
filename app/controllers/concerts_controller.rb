class ConcertsController < ApplicationController
	def index
    unauthenticated_user do
      redirect_to_index
      return
    end
	  @concerts = Concert.all
	  render 'concerts/index'
	end

  def concerts_json
    @concerts = Concert.all
    render json: @concerts
  end

	def create
    unauthenticated_user do
      redirect_to_index
      return
    end
	  concert = Concert.new
		concert.title = params[:title]
		concert.info = params[:info]
		concert.save
    redirect_to controller: 'concerts', action: 'index'
	end

	def new
    unauthenticated_user do
      redirect_to_index
      return
    end
    @relative_root = ENV['RAILS_RELATIVE_URL_ROOT']
		render 'concerts/new'
	end

	def delete
    unauthenticated_user do
      redirect_to_index
      return
    end
		
	end

end
