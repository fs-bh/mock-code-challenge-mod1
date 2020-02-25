class Passenger
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
			r.passenger == self
		end
	end

	def drivers
		self.rides.map{|r| r.driver}.uniq
	end

	def total_distance
		rides.sum{|r| r.distance}
	end

	def self.premium_members
		self.all.select do |p|
			p.total_distance > 100 
		end
	end

end