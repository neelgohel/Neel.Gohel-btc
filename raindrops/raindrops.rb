class Raindrops
  def self.convert(number)
  num_arry=[]
  (1..number).each do |factor|
    num_arry.push(factor) if number%factor==0
  end
  output="";
  flag=0
  num_arry.each do |num|
    if num==3
      output+="Pling"
    elsif num==5
      output+="Plang"
    elsif num==7
      output+="Plong"
    else
      flag=1
      next
    end
  end

  if(output=="" && flag==1)
      output=number.to_s
  end
    return output
  end
end
