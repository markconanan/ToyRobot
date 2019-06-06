require 'spec_helper' 

RSpec.describe ToyRobot::Table do
  subject { ToyRobot::Table.new(5, 5) }

  context "valid_location?" do
    it { is_expected.to be_valid_location(0, 0) }
    it { is_expected.to be_valid_location(4, 4) }
    it { is_expected.to_not be_valid_location(5, 5) } 
    it { is_expected.to_not be_valid_location(-1, -1) }
  end 
end