class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_credit(amount, total)
    @transactions << {
      date: Time.now.strftime('%d/%m/%y'),
      credit: '%.2f' % amount,
      debit: nil,
      balance: '%.2f' % total
    }
  end

  def add_debit(amount, total)
    @transactions << {
      date: Time.now.strftime('%d/%m/%y'),
      credit: nil,
      debit: '%.2f' % amount,
      balance: '%.2f' % total
    }
  end

  def print_transactions
    add_title
    @transactions.reverse_each { |t| puts "#{t.values.join(" || ")}" }
    @transactions.pop
  end

  private

  def add_title
    @transactions << {
      date: "date",
      credit: "credit",
      debit: "debit",
      balance: "balance"
    }
  end
end
