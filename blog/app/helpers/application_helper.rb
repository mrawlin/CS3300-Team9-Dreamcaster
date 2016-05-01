#Module for the entire application- helper class
module ApplicationHelper

  # Returns the user corresponding to the remember token cookie.
  def current_user
    findby = User.find_by(id: user_id)
    if (user_id = session[:user_id])
      @current_user ||= findby
    elsif (user_id = cookies.signed[:user_id])
      raise       # The tests still pass, so this branch is currently untested.
      user = findby
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end
  
end
