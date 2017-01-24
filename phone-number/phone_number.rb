class PhoneNumber
  def initialize(input)
    input = input.gsub(/[-() .,]/,'')
    @phone_no = input
  end

  def number
    bad = '0000000000'
    length = @phone_no.length
    return bad if @phone_no =~ /[a-zA-Z]/
    if length < 10
      bad
    elsif length == 10
      @phone_no
    elsif length == 11
      if @phone_no.to_s[0].to_i == 1
        @phone_no[0]=""
        @phone_no
      else
        bad
      end
    else
      bad
    end
  end

  def area_code
    @phone_no[0..2]
  end

  def to_s
    phone=[]
    phone.push('(',@phone_no[-10..-8],') ',@phone_no[-7..-5],'-',@phone_no[-4..-1])
    phone.join('')

  end
end
