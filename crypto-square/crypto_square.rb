class Crypto
  def initialize(input)
    @normalize_plaintext = input.scan(/[0-9a-zA-Z]/).join('')
    @normalize_plaintext.downcase!
    @size = Math.sqrt(@normalize_plaintext.length).ceil
    @plaintext_segments_one = []
    @plaintext_segments_two = []
    @normalize_plaintext = @normalize_plaintext.split(' ').join('')
    length_of_text = @normalize_plaintext.length
    index = 0
    while length_of_text>0
      @plaintext_segments_one.push(@normalize_plaintext.slice(index,size))
      @plaintext_segments_two.push(@normalize_plaintext.slice(index,size).ljust(size))
      index += size
      length_of_text -= size
    end

    @plaintext_segments_two.each do |word|
      word.gsub!(/ /,'#')
    end
    mat = []
    mat2 = []
    @plaintext_segments_two.each do |word|
      mat.push(word)
    end
    @plaintext_segments_one.each do |word|
      mat2.push(word)
    end
    size = @size
    @ciphertext = []
    @ciphertext2 = []
    index = 0
    while size>0
      mat.each do |word|
        @ciphertext.push(word[index])
      end
      mat2.each do |word|
        @ciphertext2.push(word[index])
      end
      index += 1
      size -= 1
    end
    @ciphertext = @ciphertext.join('')
    @ciphertext2 = @ciphertext2.join('')
  end

  def normalize_plaintext
    @normalize_plaintext
  end

  def size
    @size
  end

  def plaintext_segments
    @plaintext_segments_one
  end

  def ciphertext
    @ciphertext2
  end

  def normalize_ciphertext
    ciphertext = @ciphertext
    if @size>2
      size = @size-1
    else
      size = 2
    end
    normalize_ciphertext = []
    index = 0
    length_of_text = @normalize_plaintext.length
    while length_of_text>0
      normalize_ciphertext.push(ciphertext.slice(index,size))
      index += size
      length_of_text -= size
    end
    normalize_ciphertext=normalize_ciphertext.join(" ")
    normalize_ciphertext.gsub!(/#/,' ')
    normalize_ciphertext.split(" ").join(" ")
  end
end
