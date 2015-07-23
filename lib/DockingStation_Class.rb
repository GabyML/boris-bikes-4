require_relative 'Bike_Class'

class DockingStation #definition of DockingStation class
  def initialize
    @bikes = []
  end

	def release_bike #definition of release_bike method
		fail 'No bikes available' if @bikes.empty? #Guard Condition (presence of bikes)
		@bikes.pop # All Ruby instance variables are initially nil by default
	end

	def dock (bike)
		fail 'Docking Station full' if @bikes.count >= 20
		@bikes << bike
	end


end