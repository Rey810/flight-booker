class FlightsController < ApplicationController
  def index
    @airport_options = ordered_airports
    #@flight_options = ordered_flights

    if params[:commit]
      @to_id = params[:to_id]
      @from_id = params[:from_id]
      @passengers = params[:passengers]
      @flight_results = available_flights(@to_id, @from_id)
    end


  end


end
