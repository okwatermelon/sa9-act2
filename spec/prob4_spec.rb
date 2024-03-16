require 'prob4'
RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
       total = BankAccount.new()
       total.deposit(15)
       expect(total.balance).to eq(15)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        total = BankAccount.new()
        total.deposit(15)
        total.withdraw(10)
        expect(total.balance).to eq(5)
      end
  
      it "does not change the balance if insufficient funds" do
        total = BankAccount.new()
        total.deposit(15)
        total.withdraw(10)
        total.withdraw(10)
        expect(total.balance).to eq(5)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        total = BankAccount.new()
        expect(total.balance).to eq(0)
      end
    end
  end