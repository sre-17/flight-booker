class PassengerMailer < ApplicationMailer
    default from: 'flight@booking.com'
    
    def  thankyou_mail
        @passenger = params[:passenger]
        @booking = params[:booking]
        @flight = params[:flight]
        @url = "http://flight-booker.com/login"
        
        mail(to: @passenger.email , subject: "Booking Successful")
    end
end
