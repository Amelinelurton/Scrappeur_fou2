require_relative '../lib/00_Dark_Trader.rb'

describe "test the realisation of the array" do
    
    it "should returnhash, and hash is not nil" do
        expect(trader).not_to be_nil
        expect(trader()).is_a? Array
    end
end