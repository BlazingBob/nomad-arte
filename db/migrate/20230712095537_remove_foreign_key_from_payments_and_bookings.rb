class RemoveForeignKeyFromPaymentsAndBookings < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :payments, :orders
    remove_foreign_key :bookings, :orders
  end
end
