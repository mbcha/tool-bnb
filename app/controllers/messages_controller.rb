class MessagesController < ApplicationController
  def index
    @messages = policy_scope(Message)
  end

  def new
    @message = Message.new
    authorize @message

    @listing = Listing.find(params[:listing_id])
  end

  def create
    @message = Message.create(message_params)
    authorize @message

    @message.sender = current_user.id
    @message.status = "Unread"
    listing = Listing.find(params[:listing_id])
    @message.listing = listing
    @message.user = listing.user

    if @message.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def update
    @message = Message.find(params[:id])
    authorize @message
    @message.update(message_params)
    if @message.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    authorize @message
    @message.destroy
    redirect_to user_path(current_user)
  end

  def status
    @message = Message.find(params[:id])
    authorize @message
    @message.status = "Read"
    if @message.save
      redirect_to user_path(current_user)
    end
  end

  private

  def message_params
    params.require(:message).permit(:title, :content, :sender, :listing_id, :status)
  end
end
