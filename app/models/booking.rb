class Booking < ApplicationRecord
  belongs_to :yacht
  belongs_to :user

  validates :start_date_time, :end_date_time, presence: true
end
