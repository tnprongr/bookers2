class UsersController < ApplicationController
  def show
    @user = User.new
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)  
  end
  
end
