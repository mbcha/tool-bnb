class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    authorize @booking
    @booking.listing = Listing.find(params[:listing_id])
    @booking.listing.available = false
    @booking.user = current_user
    @booking.total_price = @booking.listing.price * (@booking.end_date - @booking.start_date)

    if @booking.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :listing_id, :start_date, :end_date)
  end
end
