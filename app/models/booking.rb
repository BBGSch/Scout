class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :training_session
  has_one :training, through: :training_session
  has_one :review, dependent: :destroy

  def start_time
    self.training_session.time
  end
end
