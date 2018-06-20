require_relative 'balance.rb'

class Account

  attr_reader :balance

  def initialize(balance = Balance.new)
    @balance = balance
  end

  def deposit(amount)
    balance.credit(amount)
  end

  def withdrawal(amount)
    balance.debit(amount)
  end

  def print_statement
    balance.print_balance
  end
end