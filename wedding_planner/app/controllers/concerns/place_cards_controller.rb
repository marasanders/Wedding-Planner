class PlaceCardsController < ApplicationController

  # index
  def index
    @place_cards = PlaceCard.all
  end

  # new
  def new
    @guest = Guest.find(params[:guest_id])
    @place_card = @guest.place_cards.new
  end


  # create
  def create
    @guest = Guest.find(params[:guest_id])
    @placecard = @guest.place_cards.create!(place_card_params)
    redirect_to [@guest,@placecard]
  end

  #show
  def show
    @place_card = PlaceCard.find(params[:id])
  end

  # edit
  def edit
    @guest = Guest.find(params[:guest_id])
    @placecard = @guest.place_cards.find(params[:id])
  end

  # update
  def update
    @guest = Guest.find(params[:guest_id])
    @placecard = @guest.place_cards.find(params[:id])
    @placecard.update(place_card_params)
    redirect_to [@guest,@placecard]
  end

  # destroy
  def destroy
    @guest = Guest.find(params[:guest_id])
    @placecard = @guest.place_cards.find(params[:id])
    @placecard.destroy
    redirect_to @guest
  end

  private
  def place_card_params
    params.require(:place_card).permit(:name, :table_number, :print)
  end

end
