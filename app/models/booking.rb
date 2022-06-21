class Booking < ApplicationRecord
    has_many :passengers
    has_many :seats
    has_many :flights, through: :seats

    accepts_nested_attributes_for :passengers
end
