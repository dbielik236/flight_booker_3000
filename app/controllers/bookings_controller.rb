class BookingsController < ApplicationController

  def new
    @booking = Booking.new
      passenger_count = params[:passenger_count].to_i
      passenger_count.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to @booking
        else
          render :new
        end
    end

    def show
        @booking = Booking.find_by(id: params[:id])
        
    end

    private 

    def booking_params
        params.require(:booking).permit(:flight_id, :passenger_id, passenger_attributes: [:name, :email])
    end
end