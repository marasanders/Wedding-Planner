class PlaceCardsController < ApplicationController

  # index
  def index
    @guest = Guest.find(params[:guest_id])
    @place_cards = @guest.place_cards
  end

  # new
  def new
    redirect_to root_path unless @current_user
    @guest = Guest.find(params[:guest_id])
    @place_card = @guest.place_cards.new
  end


  # create
  def create
    redirect_to root_path unless @current_user
    @guest = Guest.find(params[:guest_id])
    @place_card = @guest.place_cards.create!(place_card_params)
    redirect_to [@guest,@place_card]
  end

  #show
  def show
    @guest = Guest.find(params[:guest_id])
    @place_card = PlaceCard.find(params[:id])
  end

  # edit
  def edit
    redirect_to root_path unless @current_user
    @guest = Guest.find(params[:guest_id])
    @place_card = @guest.place_cards.find(params[:id])
  end

  # update
  def update
    redirect_to root_path unless @current_user
    @guest = Guest.find(params[:guest_id])
    @place_card = @guest.place_cards.find(params[:id])
    @place_card.update(place_card_params)
    redirect_to [@guest,@place_card]
  end

  # destroy
  def destroy
    redirect_to root_path unless @current_user
    @guest = Guest.find(params[:guest_id])
    @place_card = @guest.place_cards.find(params[:id])
    @place_card.destroy
    redirect_to @guest
  end

  private
  def place_card_params
    params.require(:place_card).permit(:name, :table_number, :print)
  end

end
