module SessionHelper
  
  def sign_out
puts "signing out...."    
    cookies.delete(:remember_token)
  end

  def sign_in(user)
    cookies.permanent[:remember_token]=user.remember_token
    current_user = user
  end

  def current_user=(user)
    current_user = user
  end

  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end

  private

  def user_from_remember_token
    remember_token = cookies[:remember_token]
    User.find_by_remember_token(remember_token) unless remember_token.nil?
  end
end
