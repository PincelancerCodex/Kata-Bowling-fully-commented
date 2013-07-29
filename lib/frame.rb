class Frame

  attr_accessor :bonus, :rolls

  def initialize
    @bonus = 0
    @rolls = []
  end

  def strike?
    rolls.first == 10
  end

  def roll pins
    rolls.push pins
  end

end
