class SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(params[:login_string], params[:password])
    if @user
      log_in!(@user)
      @user.login_status = true
      render "/api/users/show"
    else
      render json: ["Incorrect credentials"], status: 401
    end
  end

  def destroy
    log_out!(current_user)
    redirect_to root_url
  end

end
