# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  sum = 0
  numbers = []
  if array[0]<array[1]
    i = array[0]
    while i<= array[1]
      numbers<<i
      i = i+1
    end
  else 
    i = array[1]
    while i<= array[0]
      numbers<<i
      i = i+1
    end
  end
  numbers.each do |no|
    sum = no + sum
  end
  return sum 
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end