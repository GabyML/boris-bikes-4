require 'DockingStation_Class'
require 'Bike_Class'

describe DockingStation do
	it {is_expected.to respond_to(:release_bike)}

	it "releases a working bike" do
		subject.dock Bike.new #Added to change defauld nil
		bike = subject.release_bike
		expect(bike).to be_working
	end

	it { is_expected.to respond_to(:dock).with(1).argument }

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end

	describe '#dock' do   #Test to raise an error when ds is full
		it 'raises an error when full' do
			subject.capacity.times { subject.dock Bike.new }
			expect { subject.dock Bike.new }.to raise_error 'Docking Station full'#Ensure the string here matches the string in the main code file!!!
		end
	end

	it 'has a default capacity' do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end

end

 #expected Exception with "Docking Station full"
 #got <RuntimeError: Docking station full> with backtrace: