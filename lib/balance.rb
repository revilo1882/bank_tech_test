class Balance

  attr_reader :total, :statement

  def initialize(statement = Statement.new)
    @statement = statement
    @total = 0
  end

  def credit(depsoit)
    @total += depsoit
    statement.add_transaction(depsoit, withdrawal = nil, total)
  end

  def debit(withdrawal)
    @total -= withdrawal
    statement.add_transaction(deposit = nil, withdrawal, total)
  end

  def print_balance
    statement.print_transactions
  end
end
