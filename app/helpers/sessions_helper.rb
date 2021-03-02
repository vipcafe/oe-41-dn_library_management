module SessionsHelper
  def log_in
    session[:user_id] = 2
  end

  def current_user
    user_id = session[:user_id]
    @current_user = User.find_by id: user_id
  end
end
