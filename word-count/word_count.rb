class Phrase
  def initialize(str)
    str = str.downcase
    @input = str.gsub(/[!@#$%^&*()_+:;,.]/,' ')
  end
  def word_count
    array_of_input = @input.split(" ")
    length_of_input = array_of_input.length
    output = Hash.new
    array_of_input.each do |word1|
      count = 0
      if word1[0] == "'" && word1[-1] == "'"
        word1[0] = ''
        word1[-1] = ''
      end

      (0..length_of_input-1).each do |index|
        if word1 == array_of_input[index]
          count += 1
          array_of_input[index] = ''
        end
      end
      output[word1] = count
    end
    output.delete('')
    output
  end
end
