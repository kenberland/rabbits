#!/usr/bin/env ruby

rabbits = [24,0,0,0,0,0] # each element is the number of rabbits in that month
repro_age = 5

(1..24).each do |m|
  new_rabbits = 0
  (0..rabbits.size-1).each do |n|
    if (n<rabbits.size-repro_age)
      new_rabbits = new_rabbits + rabbits[n]/2*6
    end
  end
  rabbits.push(new_rabbits)
end

total = 0
rabbits.map{|r| total += r}
puts total
