class UsersController < ApplicationController
  def show
    @user = User.new
  end

  def index
    @users = User.all
    @books = Book.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)  
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)  
  end
  
end
