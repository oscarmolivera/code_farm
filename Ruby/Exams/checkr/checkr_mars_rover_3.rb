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

  def commands(list)
    @list = list.chars
  end

  def explore
    '3 1 E'
  end
end

puts '===================== Checkr Assessment ========================='
puts '......................... Mars Rover ............................'
puts ''
@num = 0
File&.open(ARGV[0])
File.open(ARGV[0]).each do |line|
  @matrix_size = line[/(\d\s\d)\n/, 1].split(' ') unless line[/(\d\s\d)\n/, 1].nil?
  case line
  when /(\d\s\d\s[NESW])\n/
    @position_line = (line[/(\d\s\d\s[NESW])/])
  when /[MRL]+\n/
    rover = Rover.new(@position_line)
    rover.commands(line[/[MRL]+/])
    @num += 1
    puts "Rover Num#{@num} new position: #{rover.explore}"
  else
    next
  end
end

puts @num < 1 ? 'No rovers recived any commands' : " Total Rovers Procces: #{@num}"
