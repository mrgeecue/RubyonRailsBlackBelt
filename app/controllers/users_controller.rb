class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to "/songs"
      else
        flash[:errors] = "Creation Error"
        redirect_to '/'
      end
    end


private
  def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
