class TrainingSession < ApplicationRecord
  belongs_to :training
  has_many :bookings
  has_many :reviews, through: :bookings

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
