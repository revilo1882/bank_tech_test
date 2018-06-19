class Statement

  attr_reader :transactions, :deposit, :withdrawal, :total

  def initialize
    @transactions = []
  end

  def add_transaction(deposit, withdrawal, total)
    convert_float(deposit, withdrawal, total)
    @transactions << {
      date: Time.now.strftime('%d/%m/%y'),
      credit: @deposit,
      debit: @withdrawal,
      balance: @total
    }
  end

  def print_transactions
    add_title
    @transactions.reverse_each { |t| puts "#{t.values.join(" || ")}" }
    @transactions.pop
  end

  private

  def convert_float(deposit, withdrawal, total)
    if withdrawal == nil
      @deposit = '%.2f' % deposit
      @withdrawl = nil
    else
      @withdrawal = '%.2f' % withdrawal
      @deposit = nil
    end
    @total = '%.2f' % total
  end

  def add_title
    @transactions << {
      date: "date",
      credit: "credit",
      debit: "debit",
      balance: "balance"
    }
  end
end
