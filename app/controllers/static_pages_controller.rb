class StaticPagesController < ApplicationController

	def home
		if params[:flickr] && params[:flickr][:user_id] != ""
			@flickr_id = params[:flickr][:user_id]
			render 'home'

		else
			flash.now[:notice] = "Please fill out a user id"
			render 'home'
		end
	end
end
