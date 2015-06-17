# if you have time, do this again using classes.
quantity = 15

# Create Fibbonacci sequence
sequence = [0, 1]
# when you instantiate a collection like this outside of your iteration
# it is generally a sign you are using a suboptimal iterator.
elements_per_row = 5

# Try not using while, Ruby has a lot of other, more powerful methods.
while sequence.count < quantity
  count = sequence.count
  sequence.push sequence[count - 2] + sequence[count - 1]
end

# Challenge 1
puts "Challenge 1"
sequence.each_with_index do |element, index|
  print element
  # I really like how you thought about using a general case for elements per
  # row

  if index != 0 && (index + 1) % elements_per_row == 0
    print "\n"
  else
    print " "
  end
end

# Challenge 2
puts "\n\nChallenge 2"
sequence.each_with_index do |element, index|
  print element.to_s.rjust(4)
  if index != 0 && (index + 1) % elements_per_row == 0
    print "\n"
  end
end

# Challenge 3
puts "\n\nChallenge 3"

last_element_size = sequence.last.to_s.size

sequence.each_with_index do |element, index|
  print element.to_s.rjust(last_element_size + 1)
  if index != 0 && (index + 1) % elements_per_row == 0
    print "\n"
  end
end


# This code needs to be broken up and organized - first into separate methods
# and then again into a class. We want to write small atomic chunks of code
# that we are independent and easily replaceable.
# Right now, aim for methods shorter than seven lines.
