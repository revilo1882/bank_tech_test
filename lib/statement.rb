class Statement

  attr_reader :transactions, :deposit, :withdrawal, :total

  def initialize
    @transactions = []
  end

  def add_transaction(deposit, withdrawal, total)
    @transactions << Transaction.new(deposit, withdrawal, total)
  end

  def print_transactions(printer = Printer.new)
    printer.printing(transactions)
  end
end
