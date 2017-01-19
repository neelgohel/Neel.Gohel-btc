class Triplet
@no_1=0
@no_2=0
@no_3=0

  def initialize(a,b,c)
    @no_1=a
    @no_2=b
    @no_3=c
  end

  def sum
    return @no_1+@no_2+@no_3
  end

  def product
    @no_1*@no_2*@no_3
  end

  def pythagorean?
    if @no_1**2+@no_2**2 == @no_3**2
      true
    else
      false
    end
  end

  def self.where(hash)
    @max_factor=hash[:max_factor].to_i
    if !hash[:min_factor]
      @min_factor=1
    else
      @min_factor=hash[:min_factor].to_i
    end
    array_out=[]
    if hash[:sum]
      sum=hash[:sum].to_i
      (@min_factor..@max_factor).each do |i|
        (@min_factor..@max_factor).each do |j|
          (@min_factor..@max_factor).each do |k|
            array_out.push(i*j*k) if i**2+j**2==k**2 && i+j+k==sum
          end
        end
      end
    else
      (@min_factor..@max_factor).each do |i|
        (@min_factor..@max_factor).each do |j|
          (@min_factor..@max_factor).each do |k|
            array_out.push(i*j*k) if i**2+j**2==k**2
          end
        end
      end
    end
    array_out=array_out.uniq
    array_out
  end

end

class ::Fixnum
  def product
    self
  end
end
