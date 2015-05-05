module SessionsHelper

  def authenticate_user
    

    access_token = SecureRandom.urlsafe_base64
    cookies[:access_token] = access_token
    session[:access_token] = access_token

  end 

  def authenticated_user?
  	if (session[:access_token]) && (cookies[:access_token] == session[:access_token])
  		return true
  	else
  		return false
  	end
  end
end
