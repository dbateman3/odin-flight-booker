class FlightsController < ApplicationController
	def index
		@airport_options = Airport.all.map{ |u| [ u.airport_code ] }
		@flight_options = Flight.all.map{ |u| [ u.start ] }
	end
end
