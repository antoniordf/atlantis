class Yacht < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, :description, :location, :price_per_day, :length, :capacity, :cabin, :crew, presence: true
  validates :description, length: { minimum: 6 }
end
