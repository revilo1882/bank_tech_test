class Balance

  attr_reader :total

  def initialize
    @total = 0
  end

  def credit(amount)
    @total += amount
  end

  def debit(amount)
    @total -= amount
  end
end
