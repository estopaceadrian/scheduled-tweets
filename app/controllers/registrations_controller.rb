class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save 
      redirect_to rooth_path, notice: "Successfully created user"
    else
      render :new
    end
  end
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end