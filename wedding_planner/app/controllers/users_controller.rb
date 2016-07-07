class UsersController < ApplicationController

 def index
   @users = User.all
 end

 def new
   @user = User.new
 end

 def show
   @user = User.find(params[:id])
 end

 def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    @guests = @current_user.guests
    redirect_to guests_path(@guest)
  end

  def edit
    @user = User.find(params[:id])
      redirect_to root_path unless @current_user == @user
  end

  def update
    @user = User.find(params[:id])
      redirect_to root_path unless @current_user == @user
    @user.update(user_params)
    redirect_to guests_path
  end


 private
 def user_params
   params.require(:user).permit(:username, :password)
 end

end
