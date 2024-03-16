require 'prob3'
RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        string = StringWrapper.new('milk')
        expect(string.reverse).to eq('klim')
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        string = StringWrapper.new('milk')
        expect(string.upcase).to eq('MILK')
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        string = StringWrapper.new('mIlk')
        expect(string.downcase).to eq('milk')
      end
    end
  end