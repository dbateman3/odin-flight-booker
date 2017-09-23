class FlightsController < ApplicationController
	def index
		@airport_options = Airport.all.map{ |u| [ u.airport_code, u.id ] }
		@from_label = Airport.find(params[:from_code]).airport_code
		@to_label = Airport.find(params[:to_code]).airport_code
		@from_code = params[:from_code]
		@to_code = params[:to_code]
		@date = params[:date]
		@num_tickets = params[:num_tickets]
		@results = Flight.flight_results(@from_code, @to_code)
		
	end
end
