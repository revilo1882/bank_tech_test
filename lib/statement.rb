
class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(deposit, withdrawal, total, transaction = Transaction)
    @transactions << transaction.new(deposit, withdrawal, total)
  end

  def print_transactions(printer = Printer.new)
    printer.printing(transactions)
  end
end
