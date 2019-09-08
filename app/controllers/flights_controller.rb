class FlightsController < ApplicationController
    def index 
        @flights = Flight.all
        @airport_options = Airport.all.map { |airport| [airport.city, airport.id] }
    
        @selected_flights = Flight.where(   from_airport: params[:from_code], 
                                            to_airport: params[:to_code] )
        @passengers = params[:num_tickets]
        @date = params[:date]
    end

    def new
    end

    def create
    end
end
