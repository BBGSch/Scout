class Training < ApplicationRecord
  belongs_to :user
  has_many :training_sessions, dependent: :destroy
  has_many :bookings, through: :training_sessions
  has_many :reviews, through: :bookings
  enum category: [:crossfit, :boxing, :calisthenics, :HITT, :endurance, :yoga, :strength]
  has_many_attached :photos
  
end
