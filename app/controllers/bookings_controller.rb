class BookingsController < ApplicationController

    def index

    end

    def new
        @flight = Flight.find(params[:flight_id])
        @passengers = params[:passengers].to_i
    end

    def create
    end
end
