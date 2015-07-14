class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_credentials(params[:loginString], params[:password])
    if @user
      log_in!(@user)
      redirect_to root_url
    else
      @user.login_string = params[:loginString]
      render :new
    end
  end

  def destroy
    log_out!(current_user)
  end

end
