module Weather

  Stormy  = :stormy
  Sunny   = :sunny
  Weather = [Sunny, Stormy, Sunny, Sunny]

  def stormy?
    Weather.sample == Stormy
  end

end