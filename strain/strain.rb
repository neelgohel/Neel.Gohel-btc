class Array
  def keep(&block)
    array_no = []
    output = []
    array_no = self.map(&block)
    length_of_array = self.length
    x = 0
    while length_of_array>0
      output.push(self[x]) if array_no[x]==true
      x += 1
      length_of_array -= 1
    end
    output
  end

  def discard(&block)
    array_no = []
    output = []
    array_no = self.map(&block)
    length_of_array = self.length
    x = 0
    while length_of_array>0
      output.push(self[x]) if array_no[x]==false
      x += 1
      length_of_array -= 1
    end
    output
  end
end
