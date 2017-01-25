class SpaceAge
  def initialize(inp)
    @input = inp
  end
  def seconds
    @input
  end
  def on_earth
    @input / (3600*24*365.25)
  end
  def on_mercury
    @input / 7600525.80461407
  end
  def on_venus
    @input / 19411026.175869121
  end
  def on_mars
    @input / 59359776.789808914
  end
  def on_jupiter
    @input / 374222565.1452282
  end
  def on_saturn
    @input / 928792569.6594428
  end
  def on_uranus
    @input / 2652994591.735537
  end
  def on_neptune
    @input / 5196280668.35443
  end
end
