class SessionsController < ApplicationController
  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && (user.authenticate params[:session][:password])
      log_in user
      current_user
      redirect_to root_path
      flash[:success] = "login success"
    else
      flash.now[:danger] = "invalid_email_password_combination"
      render :login
    end
  end

  def sign_up; end

  def destroy
    log_out
    redirect_to root_url
  end
end
