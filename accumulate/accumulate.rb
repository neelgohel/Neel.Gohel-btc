class ::Array
  def accumulate(&block)
    output = self.map(&block)
  end
end
