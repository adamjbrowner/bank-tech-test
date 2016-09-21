require './lib/account'
require './lib/transaction'
require 'date'

account = Account.new(0)
leave = false

while leave == false do
  puts "Please select an aption: Deposit, Withdraw, Balance, Statement, Finish"
  answer = gets.chomp.upcase

  case answer

  when "DEPOSIT"
    puts "Please enter an amount: "
    amount = gets.chomp.to_f
    account.deposit(amount)
    puts "Thank you"

  when "WITHDRAW"
    puts "Please enter an amount:"
    amount = gets.chomp.to_f
    account.withdraw(amount)
    puts "Thank you"


  when "BALANCE"
    puts "Balance: #{account.balance}"

  when "STATEMENT"
    account.transactions.each do |t|
       puts "Date: #{t.date}| Amount: #{t.money}| Balance: #{t.balance}"
    end

  when "FINISH"
    puts "Bye!"
    leave = true

  else
    puts "I'm sorry, I can't do that for you"
  end

end
