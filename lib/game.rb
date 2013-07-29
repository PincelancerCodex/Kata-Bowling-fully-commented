require 'frame'

class Game

  attr_accessor :frames

  def initialize
    @frames = []
    @current = Frame.new
    frames.push @current
  end

end
