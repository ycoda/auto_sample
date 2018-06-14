module SessionsHelper
  def login(user)
    if user
      session[:user_id] = user.id
    else
      redirect_to root_path
    end
  end

  def login?
    session[:user_id]
  end

  def logout
    session[:user_id] = nil
  end
end
