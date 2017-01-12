class Pangram
  def self.pangram?(string)

    if string==''
      return false
    end

    string=string.downcase
    string=string.split('')
    length_of_array=string.length

    alpha_array=[]
    (97..122).each do |char|
      alpha_array.push(char.chr)
    end

    (0..length_of_array).each do |char1|
      (0..25).each do |char2|
        alpha_array[char2]='' if string[char1]==alpha_array[char2]
      end
    end

    alpha_array=alpha_array.join('')
    if alpha_array==''
        return true
    else
        return false
    end
  end
end
