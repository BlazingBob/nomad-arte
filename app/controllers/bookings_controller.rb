class BookingsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    number_of_days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_price = (number_of_days * @item.price_per_day)
    if @booking.save
      price = Stripe::Price.create(
        {
          unit_amount: (@booking.total_price * 100).to_i,
          currency: 'eur',
          product_data: {
            name: @booking.item.name,
          }
        }
      )

      session = Stripe::Checkout::Session.create(
        {
          line_items: [
            {
              price: price.id,
              quantity: 1
            }
          ],
          mode: 'payment',
          success_url: dashboard_url,
          cancel_url: new_item_booking_payment_url(@item.id, @booking.id)
        }
      )

      @booking.update(stripe_session_id: session.id) # sla de sessie-ID op in de database, zodat je deze kunt gebruiken in de view
      redirect_to  new_item_booking_payment_path(@item, @booking) # redirect naar de checkout pagina voor deze boeking
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
