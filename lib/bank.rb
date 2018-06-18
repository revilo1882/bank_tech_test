class Bank

  def initialize(balance = Balance.new)
    @balance = balance
  end

  def deposit(amount)
    amount
  end

  def withdrawal(amount)
    -amount
  end
end
