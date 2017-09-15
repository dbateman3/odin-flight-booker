class Flight < ApplicationRecord
	belongs_to :from_airport, :class_name => "Airport"
	belongs_to :to_airport, :class_name => "Airport"

	def self.get_starts
		starts = Flight.find_by_sql("select distinct start from flights where start is not null")
	end

	def start_formatted
		start.strftime("%m/%d/%Y")
	end
end
