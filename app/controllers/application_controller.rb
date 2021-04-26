class ApplicationController < ActionController::Base
  helper_method :current_user
  private

  def current_user
    if session[:staff_id]
      @current_user ||= Staff.find(session[:staff_id])
    else
      @current_user = nil
    end
  end
end
