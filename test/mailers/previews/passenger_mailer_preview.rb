# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
    def thank_you
        passenger = Passenger.first
        PassengerMailer.thank_you(passenger)
    end
end
