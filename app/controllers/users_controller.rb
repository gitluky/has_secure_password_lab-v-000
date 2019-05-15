class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if User.create(user_params)
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
