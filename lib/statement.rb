class Statement

  attr_reader :transactions, :deposit, :withdrawal, :total

  def initialize
    @transactions = []
  end

  def add_transaction(deposit, withdrawal, total, transaction = Transaction.new)
    convert_float(deposit, withdrawal, total)
    @transactions << transaction.create(@deposit, @withdrawal, @total)
  end

  def print_transactions(printer = Printer.new)
    printer.printing(transactions)
  end

  private

  def convert_float(deposit, withdrawal, total)
    @total = '%.2f' % total
    withdrawal.nil? ?
    @deposit = '%.2f' % deposit : @withdrawal = '%.2f' % withdrawal
  end
end
