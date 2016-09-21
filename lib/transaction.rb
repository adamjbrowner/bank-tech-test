class Transaction

  attr_reader :money, :balance, :date

  def initialize(money, balance)
    @money = money
    @balance = balance
    @date = Date.today.strftime("%d/%m/%y")
  end

end
