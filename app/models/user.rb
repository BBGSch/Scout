class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many_attached :photos
  enum gender: [:male, :female, :nonbinary]

# if not trainer

  has_many :outgoing_reviews, source: :review, class_name: "Review"

# if trainer

  has_many :trainings, dependent: :destroy
  has_many :training_sessions, through: :trainings
  has_many :bookings, through: :training_sessions

  has_many :incoming_reviews, through: :bookings, source: :review, class_name: "Review"

  def reviews
    if trainer?
      incoming_reviews
    else
      outgoing_reviews
    end
  end
end
