require 'frame'

class Game

  attr_accessor :frames

  def initialize
    @frames = []
    @current = Frame.new
    frames.push @current
  end

  def strike
    roll 10
  end

  def roll pins
    if(@current.turn_finished?)
      frames.push @current.next_frame = @current = Frame.new	    
    end
    @current.roll pins
  end

  def spare
    roll 10 - @current.rolls.first
  end

  def score
    10.times.inject(0) { |sum, i| sum + ( frames[i].score || 0 ) }
  end

  def gutterball
    roll 0
  end

end
