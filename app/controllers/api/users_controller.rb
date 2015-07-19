class Api::UsersController < ApplicationController
  wrap_parameters :user, include: [:username, :email, :password]

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in!(@user)
      @user.login_status = true
      render :show
    else
      render json: @user.errors.full_messages, status: 401
    end

  end

  def update
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
