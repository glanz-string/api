class SessionsController < ApplicationController
	def login

		if (params[:id] != nil)
			Rails.cache.write('name', params[:id]);
#			cookies[:name] = params[:id];
		end

		# if defined? cookies['_session_id']
		# 	render 'sessions/login'
		# else 
		@key = Rails.cache.read('_session_id')
		@session_id = cookies['_session_id'];

		@name = Rails.cache.read('name');
			render 'sessions/login'
		# end

	end
end
