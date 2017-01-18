class Cipher
@key=''


  def initialize(key_val="abcdefghij")
    if key_val=~(/\A[a-z]+\z/)
      @key=key_val
    else
      raise ArgumentError
    end
  end

  def key
    @key
  end

  def encode(plaintext)
    plaintext=plaintext.split('')
    key=@key.split('')
    alpha_array=[]
    output=[]

    ('a'..'z').each do |char|
      alpha_array.push(char)
    end

    length_of_text=plaintext.length
    (0..length_of_text-1).each do |ind|
      n1=alpha_array.index(plaintext[ind]).to_i
      n2=alpha_array.index(key[ind]).to_i
      n=n1+n2
      n=n-26 if n>=26
      output.push(alpha_array[n])
     end
    output=output.join('')
    output
  end

  def decode(ciphertext)
    ciphertext=ciphertext.split('')
    key=@key.split('')
    alpha_array=[]
    output=[]

    ('a'..'z').each do |char|
      alpha_array.push(char)
    end

    length_of_text=ciphertext.length
    (0..length_of_text-1).each do |ind|
      n1=alpha_array.index(ciphertext[ind]).to_i
      n2=alpha_array.index(key[ind]).to_i
      n=n1-n2
      n=n+27 if n<0 && n>=-26
      output.push(alpha_array[n])
     end
     output=output.join('')
     output

  end
end
