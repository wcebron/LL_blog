class UsersController < ApplicationController
  def index
    if current_user != nil && current_user.is_admin == true
      @users = User.all
    else
      redirect_to posts_path
    end
  end

  def new
    @user = User.new
  end

   def show
    if current_user != nil && current_user.is_admin == true
    @user = User.find(params[:id])
    else
      redirect_to new_user_path
    end
  end

  def edit
    if current_user != nil && current_user.is_admin == true
      @user = User.find(params[:id])
    else
      redirect_to users_path
    end
  end

  def create
    user = User.new(user_params)
    user.is_admin = false
    if user.save
      session["user_id"] = user.id.to_s #logs in the user
      redirect_to new_session_path
    else
      redirect_to new_user_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path
    else
        render 'edit'
    end
  end 

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to new_user_path
  end

  private
  def user_params
   params.require(:user).permit(:email, :bio, :password, :password_confirmation, :avatar)
  end
end
