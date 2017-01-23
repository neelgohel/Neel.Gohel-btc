class Bob
  def self.hey(input)
    question = "Sure."
    chill_out = "Whoa, chill out!"
    fine = "Fine. Be that way!"
    anything = "Whatever."
    input = input.gsub(/, /,"")
    input = input.gsub(/ /,"")
    input = input.gsub(/\t/,"")
     if input == ''
       fine
    elsif input[-1] == "?"
      return question if input[0] !~ /\D/
      return chill_out if input == input.upcase
      question
    elsif input == input.upcase
      return anything if input !~ /\D/
      chill_out
    elsif input == input.upcase
      chill_out
    else
      anything
     end
  end
end
