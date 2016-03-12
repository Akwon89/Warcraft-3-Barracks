require_relative "spec_helper"

describe Unit do
  
  describe "#dead?" do

  before :each do
    @units = Unit.new(10,10)
    @footman = Footman.new
    @peasant = Peasant.new
    end

    it "units should die when HP is 0" do
      expect(@units.damage(10)).to eq(0)
    end

    it "unit dies when hp is 0 from damage" do
      expect(@footman.damage(60)).to eq(0)

    end

    it "peasant dies when hp is 0 from damage" do
      expect(@peasant.damage(35)).to eq(0)
    end


  end
end