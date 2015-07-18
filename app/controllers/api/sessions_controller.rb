class Api::SessionsController < ApplicationController

  def show
    if current_user
      render 'api/users/show'
    else
      render json: {}
    end
  end

  def create
    @user = User.find_by_credentials(params[:user][:login_string], params[:user][:password])
    if @user
      log_in!(@user)
      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 401
    end
  end

  def destroy
    log_out!(current_user)
    render json: {}
  end

end
