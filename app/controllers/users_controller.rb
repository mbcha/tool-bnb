class UsersController < ApplicationController
  def show
    @user = current_user
    @booking = Booking.new
    authorize @user

    if !@user.listings.nil?
      @bookings = []
      @user.listings.each do |listing|
        @bookings << Booking.where(listing_id: listing.id)
      end
      @bookings.reject! { |booking| booking.empty? }
    end

    Message.where(sender: current_user.id)
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to home_root
  end
end
