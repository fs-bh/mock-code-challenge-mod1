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

	def total_distance
		self.rides.sum{|r| r.distance}
	end

	def self.mileage_cap(distance)		# this function is not named well
		distance_float = distance.to_f

		self.all.select do |d|
			d.total_distance > distance_float
		end
	end
end
