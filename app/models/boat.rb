class Boat < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :reviews
  has_many :bookings
  has_many :users, through: :bookings
  has_many :boat_categories
  has_many :categories, through: :boat_categories
end
