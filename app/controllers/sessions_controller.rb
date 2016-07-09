class SessionsController < ApplicationController
  def new
  end

  def create
    # get user set session, then redirect
    username = params[:username]
    password = params[:password]
    # validate password
    user = User.find_by_email(params[:sessions][:username])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
