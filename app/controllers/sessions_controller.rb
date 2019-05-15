class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:authenicate, params[:password])
      session[:user_id] = user.id
      redirect_to 'welcome/index'
    else
      redirect_to new_session_path
    end
  end

  def destroy

  end

end
