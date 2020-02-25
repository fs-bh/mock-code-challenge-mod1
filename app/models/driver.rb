class Driver
	attr_reader :name
	attr_writer
	attr_accessor

	@@all = []
	def self.all
		@@all
	end

	def initialize(name)
		@@all.push(self)
		@name = name
	end

	def rides
		Ride.all.select do |r|
			r.driver == self
		end
	end

	def passenger_names
		self.rides.map{|r| r.passenger.name}.uniq
	end	
end
