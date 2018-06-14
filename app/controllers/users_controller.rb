class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name], password: params[:user][:password])
    if @user.save
      login(@user)
      redirect_to messages_path
    else
      redirect_to new_user_path
    end
  end
end
