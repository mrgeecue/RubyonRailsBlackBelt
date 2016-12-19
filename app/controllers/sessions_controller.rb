class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email( params[:Email])
    if @user && @user.authenticate(params[:Password])
      session[:user_id] = @user.id
      redirect_to "/songs"
    else
      flash[:errors] = "Login Error"
      redirect_to "/"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end
