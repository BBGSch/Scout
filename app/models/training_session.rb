class TrainingSession < ApplicationRecord
  belongs_to :training
  has_many :bookings
end
