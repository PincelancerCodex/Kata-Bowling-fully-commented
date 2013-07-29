require 'game'

describe Game, "Bowling" do

  let(:bowling) { Game.new }

  context "initialize" do
    it "sets rolls as [](default)" do
       bowling.frames.should be_kind_of Array 
    end
  end

  context "All Ones" do
    before :each do
      20.times { bowling.roll 1 }
    end

    it "has 10 frames" do
      bowling.frames.length.should eq 10
    end

    it "has score of 20" do
      bowling.score.should eq 20
    end
  end

end
