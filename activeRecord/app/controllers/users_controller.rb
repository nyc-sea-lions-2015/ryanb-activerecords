class UsersController < ApplicationController

  skip_before_action :authorize
  
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to '/records'
    else
      redirect_to '/'
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :password)
  end


end
