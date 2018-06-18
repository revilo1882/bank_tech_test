class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_credit(amount, total)
    @transactions << { date: Time.now.strftime('%d/%m/%y'), credit: amount, balance: total }
  end

  def add_debit(amount, total)
    @transactions << { debit: amount, balance: total }
  end

  def print_transactions
    "date || credt || debit || balance \n"
  end
end
