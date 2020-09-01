class Training < ApplicationRecord
  belongs_to :user
  has_many :training_sessions
  has_many :bookings, through: :training_sessions
  has_many :reviews, through: :bookings

  has_many_attached :photos
  
end
