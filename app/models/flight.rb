class Flight < ApplicationRecord
    belongs_to :from_airport, #the airport from which the flight departs
        class_name: "Airport", foreign_key: "from_id"
    belongs_to :to_airport, #the airport to which the flight goes
        class_name: "Airport", foreign_key: "to_id"
    
    has_many :bookings
    has_many :passengers, through: :bookings


    def formatted_date
        depart_at.strftime("%m/%d/%Y")
    end
    
end
