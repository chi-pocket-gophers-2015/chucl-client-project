class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end
