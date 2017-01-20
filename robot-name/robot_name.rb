class Robot
  ALPHA_ARRAY = ('A'.."Z").to_a
  def initialize
    @roboname = ''
    @roboname = ALPHA_ARRAY.shuffle.first + ALPHA_ARRAY.shuffle.first + Time.now.nsec.to_s[-3..-1]
  end
  def name
    @roboname
  end
  def reset
    initialize
  end
end
