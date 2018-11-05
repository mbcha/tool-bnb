class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :new, :edit, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to @listing
    else
      render :new
    end
  end

  def edit
  end

  def update
    @listing = Listing.update(listing_params)
    if @listing.save
      redirect_to @listing
    else
      render :new
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path
  end

  private

  def find_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:category, :description, :price)
  end
end
