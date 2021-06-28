class UsersController < ApplicationController
  def show

  end

  def new
  end

  def edit
  end

  def index
    @user = User.find(params[:id])
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
