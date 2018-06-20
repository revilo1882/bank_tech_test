require_relative 'statement.rb'
require_relative 'printer.rb'
require_relative 'transaction.rb'

class Account

  attr_reader :total, :statement

  def initialize(statement = Statement.new)
    @statement = statement
    @total = 0
  end

  def deposit(credit)
    @total += credit
    statement.add_transaction(credit, nil, total)
  end

  def withdrawal(debit)
    @total -= debit
    statement.add_transaction(nil, debit, total)
  end

  def print_statement
    statement.print_transactions
  end
end
