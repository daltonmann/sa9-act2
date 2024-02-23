require 'bankaccount_class'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new(500)
      account.deposit(50)
      expect(account.balance).to eq(550)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new(500)
      account.withdraw(50)
      expect(account.balance).to eq(450)
    end

    it "does not change the balance if insufficient funds" do
      account = BankAccount.new(50)
      account.withdraw(500)
      expect(account.balance).to eq(50)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new(500)
      expect(account.balance).to eq(500)
    end
  end
end
