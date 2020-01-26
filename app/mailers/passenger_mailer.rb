class PassengerMailer < ApplicationMailer
    def thank_you(passenger)
        @passenger = passenger
        @from = @passenger.booking.flight.from_airport.city
        @to = @passenger.booking.flight.to_airport.city

        mail to: @passenger.email, subject: "New Flight for #{@passenger.name}"
    end
end
