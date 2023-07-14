class AddStripeSessionIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :stripe_session_id, :string
  end
end
