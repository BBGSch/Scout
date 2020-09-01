class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :session
  has_one :review
end
