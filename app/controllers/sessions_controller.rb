class SessionsController < ApplicationController

  def new
    if params[:name].blank? || params[:password].blank? || params[:password_confirmation]
      render :new
    elsif 
    
  end

  def create

  end

  def destroy

  end

end
