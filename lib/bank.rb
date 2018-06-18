class Bank

  def initialize(balance = Balance.new)
    @balance = balance
  end

  def deposit(amount)
    @balance.credit(amount)
  end

  def withdrawal(amount)
    @balance.debit(amount)
  end
end
