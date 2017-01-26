class Scrabble
  def initialize(input)
    @word = input
  end

  def score
     if @word.nil?
       return 0
     end
     @word = @word.upcase
     word_array = @word.split('')
     score = 0
     array = [['A','E','I','O','U','L','N','R','S','T'],
              ['D','G'],['B','C','M','P'],
              ['F','H','V','W','Y'],
              ['K'],['J','X'],['Q','Z']]
     score_array= [1,2,3,4,5,8,10]
     length = array.length
     word_array.each do |char|
       (0..length-1).each do |index|
         length2=array[index].length
          (0..length2-1).each do |compindex|
            score += score_array[index] if array[index][compindex] == char
          end
        end
      end
    return score
  end
  def self.score(inp)
    scr = Scrabble.new(inp)
    scr.score
  end
end
