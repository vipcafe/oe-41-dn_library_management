class SessionsController < ApplicationController
  # before_action :log_in, only: :create

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && (user.authenticate params[:session][:password])
      log_in user
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
