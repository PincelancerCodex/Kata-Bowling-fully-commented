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

  def has_next_frame?
    !next_frame.nil?
  end	  

  def next_frame_finished?
    has_next_frame? && next_frame.finished?
  end	  

  def next_frame= ( frame )
    @next_frame = frame
  end

  def next_frame
    @next_frame
  end

  def score
    if strike?
      total_pins + next_two_rolls rescue nil	    
    elsif spare?
      total_pins + next_roll rescue nil	    
    else
      total_pins	    
    end
  end

end


