class BookingsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    @booking.save
    redirect_to item_path(@item), notice: "Booking confirmed!"
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
