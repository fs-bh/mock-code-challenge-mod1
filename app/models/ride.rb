class Ride
	attr_reader :driver, :passenger, :distance
	attr_writer
	attr_accessor

	@@all = []
	def self.all
		@@all
	end

	def initialize(driver, passenger, distance)
		@@all.push(self)
		@driver = driver
		@passenger = passenger
		@distance = distance
	end

	def self.average_distance
		sum = self.all.sum{|r| r.distance}
		num_of_rides self.all.length
		sum / num_of_rides
	end
end