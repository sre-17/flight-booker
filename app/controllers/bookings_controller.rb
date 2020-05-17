class BookingsController < ApplicationController
    def new
        @flight = Flight.find(params[:flight_id])
        @booking= @flight.bookings.build 
        params[:passengers].to_i.times do |i|
            @booking.passengers.build
        end
    end
    
    def create
        @flight = Flight.find(params[:flight_id])
        @booking = @flight.bookings.build(booking_params)
        if @booking.save
            passengers = Passenger.where("booking_id = ?" , @booking.id)
            passengers.each do |passenger|
                PassengerMailer.with(passenger: passenger, booking: @booking, flight: @flight).thankyou_mail.deliver_now
            end

            render 'show'
        else
            render 'new'
        end
    end
    
    def show 
        @booking = Booking.find(params[:id])
    end
        
    private
        def booking_params
            params.require(:booking).permit(passengers_attributes: [:id,:name, :email])
        end
end
