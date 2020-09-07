class TrainingSession < ApplicationRecord
  belongs_to :training
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  enum frequency: [:weekly, :biweekly, :monthly]

  monetize :price_cents

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
