class BookingsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user

    if @booking.save
      begin
        Stripe::Charge.create(
          customer: current_user.stripe_customer_id,
          amount: (@item.price_per_day * (@booking.end_date - @booking.start_date).to_i).to_i * 100, # amount in cents
          description: "Booking charge for #{current_user.email}",
          currency: 'eur' # Change this to your desired currency
        )
        redirect_to item_path(@item), notice: "Booking confirmed!"
      rescue Stripe::CardError => e
        flash[:error] = e.message
        @booking.destroy
        render :new
      end
    else
      render :new, status: :unprocessable_entity
    end
  end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
