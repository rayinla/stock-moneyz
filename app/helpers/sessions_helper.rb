module SessionsHelper

  def current_user
   @current_user ||= User.find_by(id: session[:user_id])
 end

 def login(user)
   session[:user_id] = user.id
 end

 def logged_in?
   !current_user.nil?
 end

 def require_user
   redirect_to new_user_path unless logged_in?
 end

end
