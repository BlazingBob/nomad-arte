class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :name, :description, :price_per_day, presence: true
  validates :description, length: { minimum: 20 }
  validates :name, uniqueness: { scope: :user, message: 'You already have this item listed' }
  validates :price_per_day, numericality: { less_than_or_equal_to: 10_000, greater_than: 1, only_integer: true }
end
