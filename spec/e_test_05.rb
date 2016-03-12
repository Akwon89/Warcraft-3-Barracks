require_relative 'spec_helper'

describe SeigeEngine do
  
  before :each do
    @seigeengine = SeigeEngine.new
  end

  it "should have AP of 50" do
    expect(@seigeengine.attack_power).to eq(50)
  end

  it "should have HP of 400" do
    expect(@seigeengine.health_points).to eq(400)
  end


end