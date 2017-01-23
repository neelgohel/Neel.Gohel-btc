class Grains
  def self.square(input)
    raise ArgumentError if input == 0 || input < 0 || input >64
    grains_count = []
    x=1
    (0..63).each do |g|
      grains_count[g] = x
      x *= 2
    end
    @total_grains=0
    grains_count.each do |count|
      @total_grains += count
    end
    grains_count[input-1]
  end

  def self.total
    @total_grains
  end
end
