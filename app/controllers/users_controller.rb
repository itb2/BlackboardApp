class UserController < ApplicationController
	before_action :authenticate_user!
	def index
		#/users
		#display the users
	end


	def create

		
	end

	def new
		@user = User.new
		
	end

	def edit
		
	end

	def editing
		
	end


	def show
	
	end


	def destroy
		
	end

	private

	def user_params
	    params.require(:user).permit(:email, :password, :fname, :lname, :location, :bio, :birthday)
    end

end