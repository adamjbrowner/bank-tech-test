class Account

  attr_reader :balance, :transactions

  def initialize(money)
    @balance = 0 + money
    @transactions = []
  end

  def deposit(money)
    @balance += money
    @transactions << [money, @balance, Date.today.strftime("%d/%m/%y")]
  end

  def withdraw(money)
    @balance -= money
    @transactions << [-money, @balance, Date.today.strftime("%d/%m/%y")]
  end

end
