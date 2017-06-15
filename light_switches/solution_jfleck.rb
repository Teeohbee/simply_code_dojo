#!/usr/bin/env ruby

def bitmap(startpoint, endpoint)
  ((2**((endpoint-startpoint)+1) - 1) << startpoint)
end

size = nil
switches = 0b0
print 'Please enter the number of switches> '
while line=gets
  if size
    points     = line.split.sort.map(&:to_i)
    startpoint = points[0]
    endpoint   = points[1]
    bitmap     = bitmap(startpoint, endpoint)
    puts "current state is #{switches.to_s(2)}, range is #{points} or #{bitmap.to_s(2)}, new state is #{(switches = switches ^ bitmap).to_s(2)}, there are #{switches.to_s(2).count('1')} lights on"
  else
    size = line.to_i
    puts "Size is #{size}"
  end
  print 'Flick a range of switches from X to Y> '
end
