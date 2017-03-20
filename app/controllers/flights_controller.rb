class FlightsController < ApplicationController

  def index

    @airports = Airport.all.map{|airport| [airport.name, airport.id]}


#2017-03-23 07:24:47
    if params[:date].present?
      @matching_flights = Flight.where(from_airport_id: params[:from_airport_id],
                                      to_airport_id: params[:to_airport_id],
                                     date: params[:date].values.join("-"))
    end
  end
end
