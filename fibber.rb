quantity = 15

# Create Fibbonacci sequence
sequence = [0, 1]
elements_per_row = 5

while sequence.count < quantity
  count = sequence.count
  sequence.push sequence[count - 2] + sequence[count - 1]
end

# Challenge 1
puts "Challenge 1"
sequence.each_with_index do |element, index|
  print element
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
