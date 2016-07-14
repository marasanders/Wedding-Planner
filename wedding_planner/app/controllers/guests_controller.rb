class GuestsController < ApplicationController
  # NHO: think you can DRY up this controller by making a before_action that will run a method
  # to redirect_to the root_path unless there is a current_user
  def index
    redirect_to root_path unless @current_user
    @guests = @current_user.guests
  end

  def show
    @guest = Guest.find(params[:id])
  end

  # new
def new
  redirect_to root_path unless @current_user
  @guest = @current_user.guests.new
end

  def create
    redirect_to root_path unless @current_user
    @guest = @current_user.guests.new(guest_params)
    if @guest.save
       redirect_to guests_path
    else
      render "new"
    end
  end

  # edit
  def edit
    redirect_to root_path unless @current_user
    @guest = Guest.find(params[:id])
  end

  # update
  def update
    redirect_to root_path unless @current_user
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
    redirect_to guests_path
  end

  # destroy
  def destroy
    redirect_to root_path unless @current_user
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
