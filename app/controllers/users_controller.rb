class UsersController < ApplicationController
  def show
    @user = current_user
    @booking = Booking.new
    authorize @user
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to home_root
  end
end
