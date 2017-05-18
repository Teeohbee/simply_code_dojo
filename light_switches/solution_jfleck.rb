#!/usr/bin/env ruby

def range(s, e)
  ((2**((e-s)+1) - 1) << s)
end

size = nil
switches = 0b0
print 'Please enter the number of switches> '
while line=gets
  if size
    points = line.split.sort.map(&:to_i)
    s = points[0]
    e = points[1]
    range = range(s, e)
    puts "current state is #{switches.to_s(2)}, range is #{points} or #{range.to_s(2)}, new state is #{(switches = switches ^ range).to_s(2)}, there are #{switches.to_s(2).count('1')} lights on"
  else
    size = line.to_i
    puts "Size is #{size}"
  end
  print 'Flick a range of switches from X to Y> '
end
