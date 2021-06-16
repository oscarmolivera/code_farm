#!/usr/bin/env ruby

=begin

A rover's position and location is represented by a combination of x and y
coordinates and a letter representing one of the four cardinal compass points.
The plateau is divided up into a grid to simplify navigation. An example
position might be 0, 0, N, which means the rover is in the bottom left corner
and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible
letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left
or right respectively, without moving from its current spot. 'M' means move
forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

=end
class Rover

  def initialize(initial_position)
    @position = initial_position
  end
end

puts '===================== Checkr Assessment ========================='
puts '......................... Mars Rover ............................'
puts ''
num = 0
File.open(ARGV[0]).each do |line|
  @matrix_size = line[/(\d\s\d)\n/, 1].split(' ') unless line[/(\d\s\d)\n/, 1].nil?
  case line
  when /(\d\s\d\s[NESW])\n/
    rover_"#{num}" = Rover.new(line[/(\d\s\d\s[NESW])/])
  when /[MRL]+\n/
    rover_commands = line[/[MRL]+/]
    process_commands(rover_initial_position, rover_commands)
    num += 1
  else
    next
  end
end
puts '... processing...................................................'

def process_commands(rip, rc)
  p rip
  p rc
end
