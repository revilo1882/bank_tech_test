require_relative 'statement.rb'

class Balance

  attr_reader :total, :statement

  def initialize(statement = Statement.new)
    @statement = statement
    @total = 0
  end

  def credit(deposit)
    @total += deposit
    statement.add_transaction(deposit, nil, total)
  end

  def debit(withdrawal)
    @total -= withdrawal
    statement.add_transaction(nil, withdrawal, total)
  end

  def print_balance
    statement.print_transactions
  end
end
