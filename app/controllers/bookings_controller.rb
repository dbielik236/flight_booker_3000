class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:booking_option])
    passenger_count = params[:passenger_count].to_i
    passenger_count.times { @booking.passengers.build }

    end

    def create
        @booking = Booking.new(booking_params)
        @flight = Flight.find_by(params[:booking][:booking_option])
        if @booking.save
            redirect_to @booking
        else
          render :new
        end
    end

    def show
        @booking = Booking.find(params[:id])
        
        
    end

    private 

    def booking_params
      params.require(:booking).permit(:booking, passengers_attributes: [:name, :email])
  end
    
end