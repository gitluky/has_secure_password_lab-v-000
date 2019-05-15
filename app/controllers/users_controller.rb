class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if params[:password] != params[:password_confirmation]
      redirect_to new_user_path
    end
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to 'welcome/index'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
