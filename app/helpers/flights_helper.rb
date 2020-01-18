module FlightsHelper

    def ordered_airports
        Airport.all.order('code ASC').map { |f| [f.code, f.id] }
    end

    #def ordered_flights
    #    flights = Flight.all.order('depart_at ASC').map { |f| f.depart_at.strftime('%d %B %Y') }
    #    unique_dates = flights.uniq
    #end

    def available_flights(to, from)
        Flight.all.where('to_id = ? and from_id = ?', to, from)
    end 

end
