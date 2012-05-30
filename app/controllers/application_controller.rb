class ApplicationController < ActionController::Base
	
	#before_filter :authenticate_admin!
  protect_from_forgery

	def current_ability
  @current_ability ||= Ability.new(current_admin)
end

	rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
