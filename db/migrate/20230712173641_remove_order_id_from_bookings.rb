class RemoveOrderIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :order_id, :integer
  end
end
