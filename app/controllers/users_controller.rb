class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.all
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def create
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
