class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @passenger = Passenger.new
    @number_of_passengers = params[:number_of_passengers]
    @flight = Flight.find(params[:flight])
  end

  def create
    redirect_to root_url
  end
end
