class Transaction

  attr_reader :date, :credit, :debit, :balance

  def initialize(deposit, withdrawal, total)
    @date = Time.now.strftime('%d/%m/%y')
    @credit = deposit
    @debit = withdrawal
    @balance = total
  end
end
