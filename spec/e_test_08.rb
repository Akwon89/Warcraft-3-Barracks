require_relative 'spec_helper'

describe SeigeEngine do
  
  describe "#attack!" do

    before :each do 
     @seige_engine = SeigeEngine.new
    end

    it "units attack points when attacking buildings
      is double its AP" do
      enemy = Barracks.new
      expect(@seige_engine.attack!(enemy)).to eq(100)
    end

  end

end


