class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_guest

  def current_guest
    @current_guest ||= Guest.find(session[:guest_id]) unless session[:guest_id].nil?
  end
end
