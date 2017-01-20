class Sieve
  def initialize(num)
    @no=num
  end
  def primes

    min = 2 
    max = @no
    output = []
    return output if @no==1
    return [2] if @no==2
    output[0] = false
    output[1] = false
    (min..max).each do |number|
      output[number] = true
    end
    max = Math.sqrt(@no).floor
    (min..max).each do |nums|
      a = 0
      if output[nums]
        while nums ** 2 + a * nums <= @no
          output[nums ** 2 + a * nums] = false
          a += 1
        end
      end
    end
    output.each_index.select{|i| output[i] == true}
  end
end
