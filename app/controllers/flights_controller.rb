class FlightsController < ApplicationController

  # GET /flights or /flights.json
  def index
    @airport_options = Airport.all.map { |u| [u.city, u.id] }
    @available_flights = Flight.where(departure_airport_id: params[:departure_airport_id],
      arrival_airport_id: params[:arrival_airport_id],
      date: params[:date])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :date, :duration)
    end
end
