class UserInfosController < ApplicationController
	before_action :authenticate_user!
	def index
		#/users
		#display the users
	end


	def create
		
		UserInfo.create(
			user_id: current_user.id,
			fname: params[:user_info][:fname],
			lname: params[:user_info][:lname],
			year: params[:user_info][:year])
		
		redirect_to :back
	end

	def new

	end

end