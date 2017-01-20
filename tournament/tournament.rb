class Tournament
  def self.tally(input)
    input=input.split("\n")
    new_inp = []
    input.each do |element|
      x = element.split(';')
      x1 = []
      x.each do |el|
          x1.push(el)
      end
      new_inp.push(x1)
    end

    teams = ['Devastating Donkeys','Courageous Californians','Blithering Badgers','Allegoric Alaskans']
    mp = [0,0,0,0]
    won = [0,0,0,0]
    lost = [0,0,0,0]
    drawen = [0,0,0,0]
    points = [0,0,0,0]

    new_inp.each do |match|
      if match[2]=='win'
        win_team = match[0]
        lose_team = match[1]
        win_index = teams.index(win_team)
        lose_index = teams.index(lose_team)
        mp[win_index] += 1
        mp[lose_index] += 1
        won[win_index] += 1
        lost[lose_index] += 1
        points[win_index] += 3

      elsif match[2]=='loss'
        win_team = match[1]
        lose_team = match[0]
        win_index = teams.index(win_team)
        lose_index = teams.index(lose_team)
        mp[win_index] += 1
        mp[lose_index] += 1
        won[win_index] += 1
        lost[lose_index] += 1
        points[win_index] += 3
      else
        win_team = match[1]
        lose_team = match[0]
        win_index = teams.index(win_team)
        lose_index = teams.index(lose_team)
        mp[win_index] += 1
        mp[lose_index] += 1
        drawen[win_index] += 1
        drawen[lose_index] += 1
        points[win_index] += 1
        points[lose_index] += 1
    end
  end
  table = []
  (0..3).each do |ind|
    x1 = []
    x1.push(teams[ind])
    x1.push(mp[ind])
    x1.push(won[ind])
    x1.push(drawen[ind])
    x1.push(lost[ind])
    x1.push(points[ind])
    table.push(x1)
  end



  table = table.sort_by{|team,match_palyed,won,drawen,lost,points| points}.reverse
  score_file = File.new("score.txt","w")
  output=<<-TALLY.gsub(/^ */, '')
    Team                           | MP |  W |  D |  L |  P
    #{table[0][0].to_s.ljust(31)}|  #{table[0][1]} |  #{table[0][2]} |  #{table[0][3]} |  #{table[0][4]} |  #{table[0][5]}
    #{table[1][0].to_s.ljust(31)}|  #{table[1][1]} |  #{table[1][2]} |  #{table[1][3]} |  #{table[1][4]} |  #{table[1][5]}
    #{table[2][0].to_s.ljust(31)}|  #{table[2][1]} |  #{table[2][2]} |  #{table[2][3]} |  #{table[2][4]} |  #{table[2][5]}
    #{table[3][0].to_s.ljust(31)}|  #{table[3][1]} |  #{table[3][2]} |  #{table[3][3]} |  #{table[3][4]} |  #{table[3][5]}
  TALLY
  score_file.write(output)
  score_file.close
  my_file = File.read("score.txt")
  return  my_file
end

end
