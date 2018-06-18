class Balance

  attr_reader :total

  def initialize(statement = Statement.new)
    @statement = statement
    @total = 0
  end

  def credit(amount)
    @total += amount
    @statement.add_credit(amount, @total)
  end

  def debit(amount)
    @total -= amount
    @statement.add_debit(amount, @total)
  end
end
