class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_credit(amount, total)
    @transactions << { date: Time.now.strftime('%d/%m/%y'), credit: amount, debit: nil, balance: total }
  end

  def add_debit(amount, total)
    @transactions << { date: Time.now.strftime('%d/%m/%y'), credit: nil, debit: amount, balance: total }
  end

  def print_transactions
    @transactions << { date: "date", credit: "credit", debit: "debit", balance: "balance" }
    @transactions.reverse.each { |t| puts "#{t.values.join(" || ")}" }
    @transactions.pop
  end
end
