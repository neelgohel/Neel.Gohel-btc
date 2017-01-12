class Complement
  def  self.of_dna(input)
      input=input.upcase
      input=input.split("")
      output=""
      input.each do |char|
        if char=='G'
          output+='C'
        elsif char=='C'
          output+='G'
        elsif char=='T'
          output+='A'
        elsif char=='A'
          output+='U'
        else
          output=""
          break
        end
      end
        return output
  end
end
