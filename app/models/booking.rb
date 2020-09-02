class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :training_session
  has_one :review, dependent: :destroy
end
