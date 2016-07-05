class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  # new
def new
  @guest = Guest.new
end

  def create
    @guest = Guest.create!(guest_params)
    redirect_to @guest
  end

  # edit
  def edit
    @guest = Guest.find(params[:id])
  end

  # update
  def update
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end

  # destroy
  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    redirect_to guests_path
  end

  private
  def guest_params
    params.require(:guest).permit(:mailing_title, :first_name, :last_name, :spouse_first_name, :spouse_last_name,
                   :address_line1, :address_line2, :city, :state, :zip, :country, :relationship, :email, :spouse_email,
                   :send_invitation, :gift_received, :thank_you_sent)
  end
end
