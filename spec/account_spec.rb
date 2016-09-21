require 'account'

describe @account do
  before(:each) do
    @account = Account.new(100)
  end
  describe '#initialize' do
    it "can initialize with a balance" do
      expect(@account.balance).to eq(100)
    end
  end
  describe "#deposit" do
    before(:each) do
      @account.deposit(100)
    end
    it "Allows the user to deposit sums of money into their @account" do
      expect(@account.balance).to eq(200)
    end

    it "Keeps track of how many deposits are made" do
      expect(@account.transactions.length).to eq(1)
    end

    it "Records the amount deposited" do
      expect(@account.transactions[0][0]).to eq(100)
    end

    it "Records the balance at the time of deposit" do
      expect(@account.transactions[0][1]).to eq(200)
    end

    it "Keeps track of the date of deposit" do
      d = Date.today.strftime("%d/%m/%y")
      expect(@account.transactions[0][2]).to eq(d)
    end
  end

  describe "#withdraw" do
    before(:each) do
      @account.withdraw(50)
    end
    it "Allows the user to withdraw sums of money from their @account" do
      expect(@account.balance).to eq(50)
    end

    it "Keeps track of the number of withdrawals made" do
      expect(@account.transactions.length).to eq(1)
    end

    it "Records the amount deposited" do
      expect(@account.transactions[0][0]).to eq(-50)
    end

    it "Records the balance at the time of withdrawal" do
      expect(@account.transactions[0][1]).to eq(50)
    end

    it "Keeps track of the date of withdrawal" do
      d = Date.today.strftime("%d/%m/%y")
      expect(@account.transactions[0][2]).to eq(d)
    end
  end
end