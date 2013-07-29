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
    if(@current.finished?)
      frames.push @current.next_frame = @current = Frame.new	    
    end
    @current.roll pins
  end

  def spare
    roll 10 - @current.rolls.first
  end

end
