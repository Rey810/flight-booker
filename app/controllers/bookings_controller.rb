class BookingsController < ApplicationController
    def new
        @flight = Flight.find(params[:flight_id])
        num_of_passengers = params[:num_of_passengers].to_i

        @booking = Booking.new
        num_of_passengers.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.create(booking_params)
        @booking.flight_id = params[:flight_id]

        if @booking.save
            redirect_to @booking
        else
            render 'new'
        end
        
    end

    def show 
        @booking = Booking.find(params[:id])
    end

    private
        def booking_params
            params.require(:booking).permit(passengers_attributes: [:name, :email])
        end
end
