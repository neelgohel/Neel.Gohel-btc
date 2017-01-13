class Series
  def initialize(num)
    @number=num.to_i
    @str=num.to_s
    @length=@str.length
    puts @number
    puts @str
    puts @length

  end


  def slices(slice_number)
    raise ArgumentError if slice_number > @length
    i=0
    loop_value=@length-slice_number+1
    output=[]
    if slice_number==1
      output=@str.split('')
    else
      while loop_value > 0
        output.push(@str[i..i+slice_number-1])
        i+=1
        loop_value-=1
      end
    end
    return output
  end
end
