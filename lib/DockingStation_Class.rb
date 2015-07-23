require_relative 'Bike_Class'

class DockingStation #definition of DockingStation class

	def release_bike #definition of release_bike method
		fail 'No bikes available' unless @bike #Guard Condition (presence of bikes)
		@bike # All Ruby instance variables are initially nil by default
	end

	def dock (bike)
		@bike = bike
	end


end