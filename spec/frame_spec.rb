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

  it "check if the roll is strike?" do
    frame.roll 10
    frame.strike?.should be_true
  end

end
