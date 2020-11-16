class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:imgage)
  end
end
