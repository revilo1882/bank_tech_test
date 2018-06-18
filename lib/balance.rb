class Balance

  attr_reader :total

  def initialize(statement = Statement.new)
    @statement = statement
    @total = 0
  end

  def credit(amount)
    @total += amount
    add_to_statement
  end

  def debit(amount)
    @total -= amount
    add_to_statement
  end

  private

  def add_to_statement
    @statement.add_transaction(@total)
  end
end
