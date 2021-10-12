require_relative '../lib/jm_trader.rb'

describe "the jm_trader method" do
  it "should return a obvious two-day case as following" do
    expect(jm_trader([3, 17])).to eq([0, 1])
  end
  it "should return that not trading is the obvious better option here" do
    expect(jm_trader([17, 3])).to eq("Don't trade, it isn't worth it")
  end
  it "should return the correct answer to the array given as an example" do
    expect(jm_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
  it "should return that not trading is the better option here" do
    expect(jm_trader([17, 15, 10, 5, 3, 2])).to eq("Don't trade, it isn't worth it")
  end
  it "should return another regular test as follows" do
    expect(jm_trader([5, 3, 2, 17, 15, 10])).to eq([2, 3])
  end
  it "should return that the format isn't correct to start with" do
    expect(jm_trader("let me enter each price in full letters")).to eq("Please provide an array")
  end
  it "should return that there's not enough data if you don't provide at least two different prices" do
    expect(jm_trader([17])).to eq("You did not provide enough data")
  end
end

