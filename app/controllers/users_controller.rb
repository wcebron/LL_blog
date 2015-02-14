class UsersController < ApplicationController
  def index
    @users = User.all
    redirect_to posts_path
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:email, :bio, :password, :password_confirmation))
    user.is_admin = false
    if user.save
      sessions["user_id"] = user.id.to_s #logs in the user
      redirect_to new_session_path
    else
      redirect_to new_user_path
    end
  end

end
