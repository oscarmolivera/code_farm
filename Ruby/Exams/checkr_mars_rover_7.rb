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

def move
  @coordinates[1] += 1 if @rover_facing == 'N'
  @coordinates[0] += 1 if @rover_facing == 'E'
  @coordinates[1] -= 1 if @rover_facing == 'S'
  @coordinates[0] -= 1 if @rover_facing == 'W'
end

def rotate(command)
  directions = {
    'N' => %w[W E],
    'E' => %w[N S],
    'S' => %w[E W],
    'W' => %w[S N]
  }
  turn = directions[@rover_facing]
  @rover_facing = command == 'L' ? turn.first : turn.last
end

def out_of_bounds?
  (0..@grid_size[0]).cover?(@coordinates[0]) &&
    (0..@grid_size[1]).cover?(@coordinates[1])
end

@num = 0
unless (ARGV[0]).nil?
  File.foreach(ARGV[0]) do |line|
    @grid_size = line[/(\d\s\d)\n/, 1].split(' ').map(&:to_i) unless line[/(\d\s\d)\n/, 1].nil?
    case line
      when /(\d\s\d\s[NESW])\n/
        @coordinates = (line[/(\d\s\d\s[NESW])/]).split(' ')[0..1].map(&:to_i)
        @rover_facing = (line[/(\d\s\d\s[NESW])/]).split(' ').last
      when /[MRL]+\n/
        (line[/[MRL]+/]).chars.each do |command|
          break unless out_of_bounds?
          command == 'M' ? move : rotate(command)
        end
        if !out_of_bounds?
          puts '-'
        else
          @num += 1
          puts @coordinates.map(&:to_s).join(' ') + ' ' + @rover_facing.to_s
        end
      else
        next
    end
  end
end
