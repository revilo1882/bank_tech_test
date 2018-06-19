class Transaction

  def create(deposit, withdrawal, total)
    {
      date: Time.now.strftime('%d/%m/%y'),
      credit: deposit,
      debit: withdrawal,
      balance: total
    }
  end
end
