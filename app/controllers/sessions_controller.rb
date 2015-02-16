class SessionsController < ApplicationController
  def new
    if session['user_id']==nil
      @user = User.new
    else
      redirect_to posts_path
    end
  end

  def create
  	u = User.where(email: params[:user][:email]).first
  	if u != nil && u.authenticate(params[:user][:password])
  		session['user_id'] = u.id.to_s
  		redirect_to posts_path(user_id: u.id)
  	end
  end

  def destroy
  	session.destroy
    redirect_to new_session_path
  end
end
