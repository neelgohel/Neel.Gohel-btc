require 'prime'
class PrimeFactors
  def self.for(input)
    prime = []
    prime = Prime.first 100
    output = []
    factors = []
    return output if input == 1
    factors = input.prime_division
    factors.each do |numbers|
      count = numbers[1]
      while count > 0
        output.push(numbers[0])
        count -= 1
      end
    end
    output
  end
end
