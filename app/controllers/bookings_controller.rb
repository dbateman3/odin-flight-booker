class BookingsController < ApplicationController
  def new
  	@booking = Booking.new
  	@num_passengers = params[:num_tickets]
  	@num_passengers.to_i.times { @booking.passengers.build }
  	@flight = Flight.find(params[:flight][:flight_id])
  	

  end

  def create
  	@booking = Booking.create(booking_params)
    @booking.passengers.each do |passenger|
      PassengerMailer.thankyou_email(passenger).deliver_later
    end
  	redirect_to @booking
  end

  def show
  	@booking = Booking.find(params[:id])
  end

  private

  	def booking_params
  		params.require(:booking).permit(:flight_id, passengers: [:name, :email] )
  	end
end
