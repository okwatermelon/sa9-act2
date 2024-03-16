require 'prob1'
RSpec.describe User do
    describe "#log_in" do
      it "logs the user in" do
        name = User.new("Me")
        name.log_in
        expect(name.logged_in).to be true
      end
    end
  
    describe "#log_out" do
      it "logs the user out" do
        name = User.new("Me")
        name.log_out
        expect(name.logged_in).to be false
      end
    end
  
    describe "#username" do
      it "returns the correct username" do
        name = User.new("Me")
        expect(name.username).to eq("Me")
      end
    end
  end