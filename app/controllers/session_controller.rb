class SessionController < ApplicationController
  def login

  end

  def create
    user = User.find_by :email => params[:email]

    if user.present?
      flash[:success] = "login_success"
      session[:user_id] = user.id

      @current_user = user
      redirect_to main_path
    else
      flash[:error] = "login_fail"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    flash[:success] = "logout_sucess"

    redirect_to main_path
  end
end