class SessionsController < ApplicationController

  def new
    @user = User.new
    @user.login_string = ""
  end

  def create
    @user = User.find_by_credentials(params[:login_string], params[:password])
    if @user
      log_in!(@user)
      redirect_to root_url
    else
      @user = User.new
      @user.login_string = params[:login_string]
      render :new
    end
  end

  def destroy
    log_out!(current_user)
    redirect_to root_url
  end

end
