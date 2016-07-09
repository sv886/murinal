class UsersController < ApplicationController
  before_action do
    @current_user = User.find_by id: session[:user_id]
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end
