class Bank

  attr_reader :balance

  def initialize(balance = Balance.new)
    @balance = balance
  end

  def deposit(amount)
    balance.credit(amount)
  end

  def withdraw(amount)
    balance.debit(amount)
  end

  def print_statement
    balance.print_balance
  end
end
