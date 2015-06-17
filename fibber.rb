class Fibber
  def initialize(quantity)
    @quantity = quantity
    @elements_per_row = 5
    @sequence = [0, 1]

    self.create_sequence
  end

  def create_sequence
    while @sequence.count < @quantity
      count = @sequence.count
      @sequence.push(@sequence[count - 2] + @sequence[count - 1])
    end
  end

  def output_jagged
    @sequence.each_with_index do |element, index|
      print element
      if index != 0 && (index + 1) % @elements_per_row == 0
        print "\n"
      else
        print " "
      end
    end
  end

  def output_better
    @sequence.each_with_index do |element, index|
      print element.to_s.rjust(4)
      if index != 0 && (index + 1) % @elements_per_row == 0
        print "\n"
      end
    end
  end

  def output_fancy
    last_element_size = @sequence.last.to_s.size

    @sequence.each_with_index do |element, index|
      print element.to_s.rjust(last_element_size + 1)
      if index != 0 && (index + 1) % @elements_per_row == 0
        print "\n"
      end
    end
  end
end

fibber = Fibber.new(30)
fibber.output_jagged
fibber.output_better
fibber.output_fancy

# CSV Exercise
# puts "\nCSV"
# writer = File.open("fib.txt", "w")
# sequence.each_with_index do |element, index|
#   writer.write("#{element}, ")
#   if index != 0 && (index + 1) % elements_per_row == 0
#     writer.write("\n")
#   end
# end
# writer.close
#
# reader = File.open("fib.txt", "r")
# puts reader.read
# reader.close
