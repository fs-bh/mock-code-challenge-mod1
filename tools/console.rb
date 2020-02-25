require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!



dave = Passenger.new('Dave')
larry = Passenger.new('Larry')
jessica = Passenger.new('Jessica')
kaitlin = Passenger.new('Kaitlin')

d_steve = Driver.new('Dr. Steve')
d_jane = Driver.new('Dr. Jane')
d_octavio = Driver.new('Dr. Octavio')
d_melinda = Driver.new('Dr. Melinda')

ride01 = Ride.new(d_jane, larry, 3.2)
ride02 = Ride.new(d_jane, larry, 2.52)
ride03 = Ride.new(d_jane, larry, 1.32)
ride04 = Ride.new(d_jane, jessica, 9.22)
ride05 = Ride.new(d_octavio, jessica, 8.25)
ride06 = Ride.new(d_octavio, jessica, 7.62)
ride07 = Ride.new(d_octavio, jessica, 6.26)
ride08 = Ride.new(d_octavio, kaitlin, 5.299)
ride09 = Ride.new(d_steve, kaitlin, 4.82)
ride10 = Ride.new(d_steve, kaitlin, 3.212)
ride11 = Ride.new(d_steve, kaitlin, 2.82)
ride12 = Ride.new(d_melinda, kaitlin, 1.277)
ride13 = Ride.new(d_melinda, larry, 2.24)
ride14 = Ride.new(d_melinda, larry, 3.29)
ride15 = Ride.new(d_melinda, larry, 4.32)
ride16 = Ride.new(d_melinda, jessica, 5.23)
ride17 = Ride.new(d_melinda, jessica, 6.833)
ride18 = Ride.new(d_steve, jessica, 7.63)
ride19 = Ride.new(d_steve, dave, 8.5)
ride20 = Ride.new(d_steve, dave, 9.43)
ride21 = Ride.new(d_jane, dave, 0.323)
ride22 = Ride.new(d_jane, dave, 1.21)



p 'Dave\'s name:'
	p dave.name
p 'Jessica\'s name:'
	p jessica.name
	p "\n"

p 'Rides Larry has taken:'
	p larry.rides
p 'Rides Kaitlin has taken:'
	p kaitlin.rides
	p "\n"

p 'Drivers Dave has rode with:'
	p dave.rides
p 'Drivers Jessica has rode with:'
	p jessica.rides
	p "\n"

p 'Total distance Larry has ridden:'
	p larry.total_distance
p 'Total distance Kaitlin has ridden:'
	p kaitlin.total_distance
	p "\n"

p 'All passengers:'
	p Passenger.all
	p "\n"

p 'Passengers who have traveled over 100 miles:'
	p Passenger.premium_members
	p "\n"

p '----------------------'
p "\n\n"

p 'Passenger in ride 17:'
	p ride17.passenger
p 'Passenger in ride 10:'
	p ride10.passenger	
	p "\n"

p 'Driver in ride 1:'
	p ride1.driver
p 'Driver in ride 21:'
	p ride21.driver
	p "\n"

p 'Distance of ride 13:'
	p ride13.distance
p 'Distance of ride 5:'
	p ride5.distance
	p "\n"

p 'Average distance of all rides:'
	p Ride.average_distance
	p "\n"

p '----------------------'
p "\n\n"

p 'Octavio\'s name:'
	p d_octavio.name
p 'Melinda\'s name:'
	p d_octavio.name
	p "\n"

p 'Steve\'s Passengers:'
	p d_steve.passenger_names
p 'Jane\'s Passengers:'
	p d_jane.passenger_names
	p "\n"

p 'Octavio\'s Rides:'
	p d_octavio.rides
p 'Jane\'s Rides:'
	p d_jane.rides
	p "\n"

p 'All Drivers:'
	p Driver.all
	p "\n"

p 'Drivers who have driven over 10 miles:'
	p Driver.mileage_cap(10)
p 'Drivers who have driven over 25 miles:'
	p Driver.mileage_cap(25)








# binding.pry
p "\n\n"
p '----------------------'
p '     End of Code'