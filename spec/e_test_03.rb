require_relative "spec_helper"

describe Unit do

    before :each do
      @unit1 = Unit.new(10, 10)
      @unit2 = Unit.new(0, 10)
      @unit3 = Unit.new(0, 15)
    end

      it "A dead unit cannot attack another unit" do
        expect(@unit2.attack!(@unit1)).to eq(nil)
      end

      it "An alive unit cannot attack a dead unit" do
        expect(@unit1.attack!(@unit3)).to eq(nil)
      end

end