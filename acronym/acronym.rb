class Acronym
  def self.abbreviate(input)
    output = []
    input = input.gsub(/[-:,]/,' ')
    input = input.split(' ')
    input.each do |word|
      output.push(word[0].upcase)
      wordlength = word.length
      (1..wordlength-1).each do |index|
        output.push(word[index]) if /[[:upper:]]/.match(word[index]) && /[[:lower:]]/.match(word[index-1])
      end
    end
    output.join('')
  end
end
