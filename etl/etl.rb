class ETL
  def self.transform(old)
    score = []
    hash_length = old.length
    i = 0
    hash_to_array = old.to_a
    while hash_length>0
      score.push(hash_to_array[i][0])
      i += 1
      hash_length -= 1
    end
    expected = Hash.new
    i = 0
    char_array = Array.new()
    length_of_score = score.length
    while length_of_score>0
      char_array.push(old[score[i]])
      i += 1
      length_of_score -= 1
    end
    length_of_score = score.length
    str = ""
    i = 0
    while length_of_score>0
      str = char_array[i].join("")
      str = str.downcase
      char_array[i] = str.split('')
      i += 1
      length_of_score -= 1
    end

    length_of_score2 = 0
    x = 0
    char = ''
    length_of_score = char_array.length
    while length_of_score > 0
      length_of_score2 = char_array[x].length
      i = 0
        while length_of_score2 >0
          char = char_array[x][i]
          i += 1
          expected[char] = score[x]
          length_of_score2 -= 1
        end
      x += 1
      length_of_score -= 1
    end
    expected = Hash[ expected.sort_by { |key, val| key } ]
    expected
  end
end
