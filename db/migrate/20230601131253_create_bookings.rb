class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.float :total_price, default: 0

      t.timestamps
    end
  end
end
