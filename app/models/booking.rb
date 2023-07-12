class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item

  after_create :charge

  def charge
    Stripe::Charge.create(
      amount: (total_price * 100).to_i, # amount in cents
      currency: 'eur',
      customer: user.stripe_customer_id
    )
  end
end
