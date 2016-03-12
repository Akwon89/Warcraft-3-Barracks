require_relative 'spec_helper'

#give barrak hp of 500
#units can attack buildings
#footman and units do 1/2
#amount of damage to buildings

describe Barracks do

  before :each do
    @barracks = Barracks.new
    # @footman = Footman.new
    # @unit = Unit.new(20,20)
  end

  it "has and knows its HP(health_points)" do
    expect(@barracks.health_points).to eq(500)
  end
end

# describe Footman do

#   before :each do
#     @barracks = Barracks.new
#     @footman = Footman.new
#     @unit = Unit.new(20,20)
#   end


#   describe "#attack!" do
#     it "attacked by unit, does half ap"
#     enemy = @barracks
#     (@unit.attack!(enemy))
#     expect(@barracks.health_points).to eq(480)
#     end
#   end

#   describe "@barracks.health_points" do
#     it "attacked by footman, does half ap"
#     (@footman.attack!(enemy))
#     expect(@barracks.health_points).to eq(495)
#     end
#   end

# end
#   describe "@barracks.health_points" do
#     it "attacked by footman, does half ap"
#     (@footman.attack!(enemy))
#     expect(@barracks.health_points).to eq(495)
#     end
#   end
# end


# end

describe Footman do
  
  describe "#attack!" do

    before :each do 
     @footman = Footman.new
    end

    it "units attack points when attacking buildings
      is half its AP" do
      enemy = Barracks.new
      expect(@footman.attack!(enemy)).to eq(5)
    end

  end
end
