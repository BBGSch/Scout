class TrainingSession < ApplicationRecord
  belongs_to :training
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
end
