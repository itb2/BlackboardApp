class HomeController < ApplicationController
	def index
		
		if current_user != nil
			@user = UserInfo.where(user_id: current_user.id)[0];
			
			@user1 = UserInfo.new
		end
  	end

  	def _feed
  		@post = Post.new
  		@user = UserInfo.where(user_id: current_user.id)[0];
  	end
end