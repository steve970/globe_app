class AuthenticationController < ApplicationController

  skip_before_action :ensure_current_user

  def new
    @user = User.new
    # @images = GettyAPI.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to countries_path
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
