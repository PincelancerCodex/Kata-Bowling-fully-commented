require 'game'

describe Game, "Bowling" do

  let(:bowling) { Game.new }

  context "initialize" do
    it "sets rolls as [](default)" do
       bowling.frames.should be_kind_of Array 
    end
  end

end
