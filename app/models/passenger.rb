class Passenger < ApplicationRecord
    belongs_to :booking
    has_many :flights, through: :booking

    validates :name, presence: true
    valides :email, presence: true
end
