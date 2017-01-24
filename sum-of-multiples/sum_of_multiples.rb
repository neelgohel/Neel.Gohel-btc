class SumOfMultiples
  def initialize(a,b, c = 0)
    @array_of_input=[]
    if c != 0
      @array_of_input.push(a,b,c)
    else
      @array_of_input.push(a,b)
    end
  end
  def to(limit)
    sum = 0
    (0..limit-1).each do |number|
      count = 0
      (0..@array_of_input.length - 1).each do |index|
        if number % @array_of_input[index] == 0
          sum += number
          break
        end
      end
    end
    sum
  end
end
