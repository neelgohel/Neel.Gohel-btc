class BeerSong
  def verse(input)
    if input == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif input == 1
      "#{input} bottle of beer on the wall, #{input} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif input == 2
      "#{input} bottles of beer on the wall, #{input} bottles of beer.\n" \
      "Take one down and pass it around, #{input-1} bottle of beer on the wall.\n"
    else
      "#{input} bottles of beer on the wall, #{input} bottles of beer.\n" \
      "Take one down and pass it around, #{input-1} bottles of beer on the wall.\n"
    end
  end
  def verses(from,to)
    output = ""
    count = from - to
    while from >= to
      output += verse(from)
      while count > 0
        output += "\n"
        count -=1
      break
      end
      from -= 1
    end
    output
  end

  def lyrics
    verses(99,0)
  end
end
