class FlightsController < ApplicationController
  def index
    @airport_options = ordered_airports

    search_results

  end
end
