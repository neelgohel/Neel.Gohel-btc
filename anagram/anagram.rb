class Anagram
  @input = ''
  def initialize(inp)
    @input = inp
  end

  def match(listinp)
    output = []
    return output if @input==''
    wordx = @input.downcase
    word1=wordx.split('')
    word1.sort_by!{ |m| m.downcase }
    listinp.each do |word2|
      word = word2
      word2 = word2.downcase
      word2 = word2.split('')
      word2 = word2.sort_by!{ |m| m.downcase }
      if word1==word2 && wordx!=word.downcase
       output.push(word)
      end
    end
    return output
  end
end
