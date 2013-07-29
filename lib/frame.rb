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

  def spare?
    total_pins == 10
  end

  def total_pins
    rolls.inject { |sum,n| sum += n }
  end

  def turn_finished?
    strike? || rolls.length == 2
  end

end
