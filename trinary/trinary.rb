class Trinary
  def initialize(num)
    @input = num
  end
  def to_decimal
    output = 0
    return 0 if @input =~ /[a-zA-Z3-9]/
    array_of_input = @input.split('')
    array_of_input.reverse!
    length_of_input = array_of_input.length
    index = 0
    while length_of_input > 0
      output += array_of_input[index].to_i * 3**index
      length_of_input -= 1
      index += 1
    end
    output
  end
end
