class SessionsController < ApplicationController

  skip_before_action :authorize

  def new
    cur_user = User.new
  end

  def create
    cur_user = User.find_by_username(params[:session][:username])
    if cur_user && cur_user.authenticate(params[:session][:password])
      session[:user_id] = cur_user.id
      redirect_to '/users'
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end


end