class Account

  attr_reader :balance, :transactions

  def initialize(money = 0)
    @balance = money
    @transactions = []
  end

  def deposit(money)
    @balance += money
    @transactions << Transaction.new(money, @balance)
  end

  def withdraw(money)
    @balance -= money
    @transactions << Transaction.new(-money, @balance)
  end

end
