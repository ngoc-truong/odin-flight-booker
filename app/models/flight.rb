class Flight < ApplicationRecord
    belongs_to :from_airport, class_name: "Airport"
    belongs_to :to_airport, class_name: "Airport"
    has_many :bookings 
    has_many :passengers, through: :bookings

    def date_formatted
        date.strftime("%d.%m.%Y - %H:%M")
    end
end
