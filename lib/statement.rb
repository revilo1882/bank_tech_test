class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(total)
      @transactions << { balance: total }
  end
end
