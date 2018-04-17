class UsersController < ApplicationController
  helper_method :user_params

  def new
    @user = User.new
  end

  def create
     @user = User.new
     @user.name = params[:user][:name]
     @user.email = params[:user][:email]
     @user.password = params[:user][:password]
     @user.password_confirmation = params[:user][:password_confirmation]

     if @user.save
       flash[:notice] = "Welcome to Bloccit #{@user.name}!"
       redirect_to root_path
     else
       flash.now[:alert] = "There was an error creating your account. Please try again."
       render :new
     end
   end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def confirm
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
  end
end
