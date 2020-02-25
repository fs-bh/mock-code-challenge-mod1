class Ride
	attr_reader :driver, :passender, :distance
	attr_writer
	attr_accessor

	@@all = []
	def self.all
		@@all
	end

	def initialize(driver, passenger, distance)
		@@all.push(self)
		
	end
end