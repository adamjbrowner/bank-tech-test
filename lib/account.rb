class Account

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
  
  attr_reader :balance, :transactions

end
