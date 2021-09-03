class BookingSerializer < ActiveModel::Serializer
  attributes :id, :date, :guests, :accepted
  has_one :boat
  has_one :user
end
