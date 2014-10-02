def average(numbers)
  sum = 0
  numbers.each do |num|
    sum += num.to_i.round(1) 
    next if num == nil
  end.compact!
  numbers.length > 0 ? sum / numbers.length : sum 
end
 
## TEST HELPER METHOD
def test_average(array = [])
  print "avg of #{array.inspect}:"
  result = average(array)
  puts result
end
 
## TEST CODE
test_average([4,5,6]) # => 5
test_average([15,5,10]) # => 10
 
# Should treat string like number
test_average([15,'5',10]) # => 5
 
# Should show decimal value
test_average([10, 5]) # => 7.5 instead of just 7
 
# Empty set should return 0 as average, not throw an error
test_average([]) # => 0
 
# Non-existent set should return 0
test_average() # => 0
 
# BONUS: Should ignore nils in the set
test_average([9,6,nil,3]) # => 6