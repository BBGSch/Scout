class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_one :training_session, through: :booking
  has_one :training, through: :training_session
end
