class RunLengthEncoding
  def self.encode(input)
    array_of_input = input.split('')
    length_of_input = array_of_input.length
    array_of_output = []
    count = 1
    (0..length_of_input-1).each do |index|
      if array_of_input[index] == array_of_input[index+1]
        count += 1
      else
        array_of_output.push(count) if count > 1
        array_of_output.push(array_of_input[index])
        count = 1
        next
      end
    end
    array_of_output.join('')
  end

  def self.decode(input)
    array_of_input = input.split('')
    array_of_output = []
    length_of_input = array_of_input.length
    index = 0
    nums=[]
    while length_of_input > 0
      if array_of_input[index] =~ /\d/
        nums.push(array_of_input[index])
        index += 1
        length_of_input -= 1
      else
        num = nums.join('').to_i
        num = 1 if num == 0
        while num >0
          array_of_output.push(array_of_input[index])
          num -= 1
        end
        nums = []
        index += 1
        length_of_input -= 1
      end
    end
    array_of_output.join('')
  end
end
