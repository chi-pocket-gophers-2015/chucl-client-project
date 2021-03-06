class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_user
    @_current_user ||= User.find_by_id(session[:user_id])
  end
  helper_method :current_user

  def is_author(author_id)
    if current_user
      current_user.id == author_id
    end
  end
  helper_method :is_author

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def authenticate_user
    redirect_to(new_session_path) unless logged_in?
  end
end
