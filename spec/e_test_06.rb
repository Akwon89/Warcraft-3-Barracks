require_relative 'spec_helper'

describe Barracks do
  
  before :each do 
    @barracks = Barracks.new
  end

    describe "#train_seige_engine" do 

      it "cost 200 gold" do
        @barracks.train_seige_engine
        expect(@barracks.gold).to eq(800)
      end

      it "cost 60 lumber" do
        @barracks.train_seige_engine
        expect(@barracks.lumber).to eq(440)
      end

      it "cost 3 food" do
        @barracks.train_seige_engine
        expect(@barracks.food).to eq(77)
      end

      it "produces a seige engine unit" do 
        seige_engine = @barracks.train_seige_engine
        expect(seige_engine).to be_an_instance_of(SeigeEngine)
      end

    end


end