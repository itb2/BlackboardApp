class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    puts "TEST"
    default_params.permit(:netid, :fname, :lname, :year)
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    else
      super # Use the default one
    end
  end
end



