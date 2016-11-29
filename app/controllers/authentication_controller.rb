class AuthenticationController < ApplicationController
  # Turn off user authentication for all actions in this controller
  skip_before_filer :authenticate_user!

  def login
    '...'
  end

  def register
    redirect_to "/users/new"
  end
end
