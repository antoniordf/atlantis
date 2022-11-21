class Yacht < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, :description, :location, :price_per_day, :length, :capacity, :cabin, :crew, presence: true
  validates :description, length: { minimum: 6 }
end
