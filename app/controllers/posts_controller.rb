class PostController < ApplicationController

	def create
		#how can I determine whether its a post from a user or a group
		@user = User.find(current_user.id)
		@p = Post.new(
			user: @user,
			body: params[:post],

	    )
	    if !@p.save
	    	flash[:notice] = "Invalid Post: You must include all required fields and be a registered user!"
	   	end
		
		redirect_to :back
	end
end