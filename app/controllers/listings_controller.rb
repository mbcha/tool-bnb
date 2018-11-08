class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :new, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  layout :resolve_layout

  def index
    @listings = policy_scope(Listing)

    if params[:query].present?
      @listings = Listing.where("category ILIKE ?", "%#{params[:query]}%")
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @booking = Booking.new
  end


  def new
  end

  def create
    @listing = Listing.new(listing_params)
    authorize @listing
    @listing.user = current_user
    if @listing.save
      redirect_to user_path(current_user) + '#listings'
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @listing
    @listing.update(listing_params)
    if @listing.save
      redirect_to @listing
    else
      render :new
    end
  end

  def destroy
    @listing.destroy
    redirect_to user_path(current_user) + '#listings'
  end

  private

  def find_listing
    @listing = Listing.find(params[:id])
    authorize @listing
  end

  def listing_params
    params.require(:listing).permit(:category, :description, :price, :user_id, :photo)
  end

  def resolve_layout
    action_name == 'index' ? 'another_layout' : 'application'
  end
end
