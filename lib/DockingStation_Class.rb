require_relative 'Bike_Class'

class DockingStation #definition of DockingStation class
	attr_accessor :capacity

	def initialize capacity
	@capacity = capacity
	end

	DEFAULT_CAPACITY = 20

	# attr_reader :capacity #this is no longer needed as attr_accesor has replaced this

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

	def release_bike #definition of release_bike method
		fail 'No bikes available' if empty?
			#Guard Condition (presence of bikes)
		@bikes.pop # All Ruby instance variables are initially nil by default
	end


	def dock (bike)
		fail 'Docking Station full' if full? || broken?
		@bikes << bike
	end

	private

	attr_reader :bikes

	def full?
		@bikes.count >= capacity
	end

	def empty?
		@bikes.empty?
	end


		
end


