require 'frame'

describe Frame, "Bowling Game" do

  let(:frame) { Frame.new }

  context "initialize" do
    it "sets bonus as 0(default)" do
      frame.bonus.should eq 0
    end

    it "sets rolls as [](default)" do
      frame.rolls.count.should == 0
    end
  end

  it "checks if the roll is strike?" do
    frame.roll 10
    frame.strike?.should be_true
  end

  it "checks if the frame is spare" do
    frame.roll 5
    frame.roll 5
    frame.spare?.should be_true
  end

  it "checks total pins works fine" do
    frame.roll 3
    frame.roll 4
    frame.total_pins.should == 7
  end

  it "checks turn_finished? method works very well context strike" do
    frame.roll 10
    frame.turn_finished?.should be_true
  end

  it "checks turn_finished? method works very well context spare" do
    frame.roll 4
    frame.roll 6
    frame.turn_finished?.should be_true
  end

  it "checks turn_finished? method work fine one roll context" do
    frame.roll 7
    frame.turn_finished?.should be_false
  end

  it "checks turn_finished? method work fine two rolls context" do
    frame.roll 3
    frame.roll 2
    frame.turn_finished?.should be_true
  end

  it "has score 6 after two rolls 3/3" do
    frame.roll 3
    frame.roll 3
    frame.score.should == 6
  end

  it "has a score 15 after rolls 5/5(spare) and 5 as bonus(next roll)" do
    frame.roll 5
    frame.roll 5
    frame.roll 5
    frame.score.should eq 15
  end

end


