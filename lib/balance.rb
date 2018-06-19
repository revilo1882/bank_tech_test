class Balance

  attr_reader :total, :statement

  def initialize(statement = Statement.new)
    @statement = statement
    @total = 0
  end

  def credit(amount)
    @total += amount
    statement.add_credit(amount, total)
  end

  def debit(amount)
    @total -= amount
    statement.add_debit(amount, total)
  end

  def print_balance
    statement.print_transactions
  end
end
