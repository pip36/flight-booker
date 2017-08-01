class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @number_of_passengers = params[:number_of_passengers].to_i

    @passengers = []
    @number_of_passengers.times { @passengers << @booking.passengers.new }

    @flight = Flight.find(params[:flight])
  end

  def create
    #if successful create a new booking (:flight_id)
    #and create each passenger (:name, :email)
    @booking = Booking.new(flight_id: params[:booking][:flight_id])

    params[:booking][:passenger].each do |passenger|
      @booking.passengers.build(name: passenger[:name], email: passenger[:email])
    end

    if @booking.save && @booking.passengers.any?
      redirect_to @booking
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
  end

end
