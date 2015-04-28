class ConcertsController < ApplicationController
	def show
		@concerts = Concert.all
		render 'concerts/show'
	end

	def create
		concert = Concert.new
		concert.title = params[:title]
		concert.info = params[:info]
		concert.save
		render 'concerts/confirm'
	end

	def edit
		render 'concerts/form'
	end

	def delete
		
	end

end
