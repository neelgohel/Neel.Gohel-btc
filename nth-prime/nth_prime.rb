require 'prime'
class Prime
  def  self.nth(num)
    raise ArgumentError  if num == 0
    prime_numbers=Prime.first 10002
    prime_numbers[num-1]
    end
end
