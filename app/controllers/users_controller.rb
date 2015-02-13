class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    user = User.new(params.require(:user).permit(:email, :bio, :password, :password_confirmation))
      if user.save
        redirect_to new_session_path
      end
  end

  def show
  end

  def destroy
  end

  def update
  end
end
