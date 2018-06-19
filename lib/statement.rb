class Statement

  attr_reader :transactions, :deposit, :withdrawal, :total

  def initialize
    @transactions = []
  end

  def add_transaction(deposit, withdrawal, total)
    convert_float(deposit, withdrawal, total)
    push_transactions
  end

  def print_transactions(printer = Printer.new)
    printer.printing(transactions)
  end

  private

  def convert_float(deposit, withdrawal, total)
    if withdrawal == nil
      @deposit = '%.2f' % deposit
    else
      @withdrawal = '%.2f' % withdrawal
    end
    @total = '%.2f' % total
  end

  def push_transactions
    @transactions << {
      date: Time.now.strftime('%d/%m/%y'),
      credit: @deposit,
      debit: @withdrawal,
      balance: @total
    }
    clear_transactions
  end

  def clear_transactions
    @deposit = nil
    @withdrawal = nil
  end
end
