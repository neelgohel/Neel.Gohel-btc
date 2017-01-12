class Hamming
  def self.compute(a,b)
    if a=='' && b==''
      return 0
    else
      a=a.upcase
      b=b.upcase
      l1=a.length
      l2=b.length

          if l1!=l2
            raise ArgumentError
          end


        a=a.split('')
        b=b.split('')

        count=0
        x=0
        while l1>0
          if a[x]!=b[x]
            count=count+1
          end
          l1=l1-1
          x=x+1
        end

        return count
    end
  end
end
