class SessionsController < ApplicationController
  def show
    session[:user_id] = nil
    redirect_to root_path
  end

  def new
  end

  def create
    if @user = User.find_by(username: params[:session][:username])
      @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render(:new)
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end

end
