class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to home_root
  end

  private

  def user_params
    params.require(:user).permit(:name, :location)
  end
end
