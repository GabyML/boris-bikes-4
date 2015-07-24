require_relative 'Bike_Class'

class DockingStation #definition of DockingStation class
	attr_accessor :capacity

	DEFAULT_CAPACITY = 20

	def initialize (capacity=DEFAULT_CAPACITY)
	bike = Bike.new
	@bikes = []
	@capacity = capacity

	end

	# attr_reader :capacity #this is no longer needed as attr_accesor has replaced this
	def dock (bike)
		fail 'Docking Station full' if full?
		@bikes << bike
		#@working_bikes << bike unless bike.broken?
	end

	def release_bike #definition of release_bike method

		# fail 'No working bikes available' if empty?
			#Guard Condition (presence of bikes)
		#fail 'This bike is broken!' if @bikes.last.broken? == true #This test is commented because with the second array will no longer be needed
		
		working_bikes = bikes.select { |bike|bike.working? }

		fail "No working bikes available" if working_bikes.empty?
		

		bike = working_bikes.pop

		bikes.delete bike
		
		bike
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


