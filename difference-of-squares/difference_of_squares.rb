class Squares
  def initialize(num)
   no = num
   num_array = []
   (0..no).each do |number|
     num_array.push(number)
   end

   squareofsum = 0
   sum_before_square = 0
   num_array.each do |number|
     sum_before_square = sum_before_square + number
   end
   squareofsum = sum_before_square * sum_before_square;

   sumofsquares = 0
   num_array.each do |number|
    sumofsquares = sumofsquares + (number * number)
   end

   @square_of_sums = squareofsum
   @diff = squareofsum-sumofsquares
   @sum_of_squares = sumofsquares
 end
  
  def square_of_sum
    return @square_of_sums
  end

  def difference
    return @diff
  end

  def sum_of_squares
     return @sum_of_squares
  end
end
