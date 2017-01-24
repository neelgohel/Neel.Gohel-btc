class Binary
  def self.to_decimal(input)
    raise ArgumentError if input =~ /[a-zA-Z2-9]/
    input = input.split('')
    input = input.reverse
    output = 0
    length_of_input = input.length
    (0..length_of_input).each do |index|
      output += (input[index].to_i * 2**index)
    end
    output
  end
end
