class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
    else
    end
  end

private

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password
    )

  end
end

