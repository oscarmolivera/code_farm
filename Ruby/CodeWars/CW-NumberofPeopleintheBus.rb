=begin 
Number of People in the Bus
There is a bus moving in the city, and it takes and drop some people in each 
bus stop. You are provided with a list (or array) of integer arrays (or 
tuples). Each integer array has two items which represent number of people get 
into bus (The first item) and number of people get off the bus (The second 
item) in a bus stop. Your task is to return a number of people who are still in 
the bus after the last bus station (after the last array). Even though it is 
the last bus stop, the bus is not empty and some people are still in the bus, 
and they are probably sleeping there :D Take a look on the test cases.
Please keep in mind that the test cases ensure that the number of people in the
bus is always >= 0. So the return integer can't be negative. 
The second value in the first integer array is 0, since the bus is empty in the 
first bus stop.
=end

def people_remain(bus_stops)
  bus_stops.map{|ins, out| ins - out}.reduce(:+)
end



=begin ############################################# OTHERS SOLUTIONS 
2)
def people_remain(bus_stops)
  bus_stops.inject(0) { |pax, (pax_on, pax_off)| pax + pax_on - pax_off }
end
----------------------------------------------------------------------
3)
def people_remain(bus_stops)
  bus_stops.reduce(0) { |k, (on, off)| k + on - off }
end
----------------------------------------------------------------------
4)
def people_remain(bus_stops)
  passengers = 0
  bus_stops.each do |a,b|
    passengers += a - b
  end
  passengers
end
----------------------------------------------------------------------
5)
def people_remain(bus_stops)
  riders = 0
  bus_stops.each do |stop|
    riders += stop[0]
    riders -= stop[1]
  end
  return riders
end
----------------------------------------------------------------------
6)MIO!!!
def people_remain(bus_stops)
  bus_stops.map{ |item| item[0]-item[1]}.reduce(&:+)
end

----------------------------------------------------------------------
7)

----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end