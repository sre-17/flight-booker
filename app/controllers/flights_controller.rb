class FlightsController < ApplicationController
    def index
        @date_array = Flight.all.map { |flight| [flight.start_time.strftime("%d-%m-%Y") ,
                                                 flight.start_time.strftime("%d-%m-%Y")] }
        @date_array.uniq!
        
        @flights = Flight.where("start_airport_id = ? AND finish_airport_id = ?" , params[:from] , params[:to] )
        @flight = Flight.new
        @flights.each do |flight|
            if not flight.start_time.strftime("%d-%m-%Y") == params[:date]
                @flights.delete(flight)
            end
        end
    end
end
