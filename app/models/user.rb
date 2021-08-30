class User < ApplicationRecord
    has_secure_password
    # boats owned
    has_many :boats
    has_many :bookings
    has_many :boats, through: :bookings
    has_many :reviews

end
