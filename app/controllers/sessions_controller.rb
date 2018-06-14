class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user.password == params[:session][:password]
      login(@user)
      redirect_to messages_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
