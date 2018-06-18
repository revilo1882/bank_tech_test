class Balance

  attr_reader :total

  def initialize
    @total = 0
  end

  def credit(amount)
    @total += amount
  end
end
