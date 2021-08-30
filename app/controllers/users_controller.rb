class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to user_path(current_user)
    end
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def create

  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "You have updated user succcessfully."
        redirect_to user_path(@user)
      else
        render :edit
      end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
