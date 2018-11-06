class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @listings = policy_scope(Listing)
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.create(listing_params)
    @listing.user = current_user
    authorize @listing
    if @listing.save
      redirect_to user_path(current_user)
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
    redirect_to listings_path
  end

  private

  def find_listing
    @listing = Listing.find(params[:id])
    authorize @listing
  end

  def listing_params
    params.require(:listing).permit(:category, :description, :price, :user_id)
  end
end
