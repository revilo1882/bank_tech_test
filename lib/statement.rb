class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_credit(amount, total)
    @transactions << { credit: amount, balance: total }
  end

  def add_debit(amount, total)
    @transactions << { debit: amount, balance: total }
  end


end
