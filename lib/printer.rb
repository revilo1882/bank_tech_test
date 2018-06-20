class Printer

  def printing(transactions)
    puts "date || credit || debit || balance"
    transactions.reverse_each do |t|
      check_type(t.date, t.credit, t.debit, t.balance)
    end
  end

  private

  def check_type(date, credit, debit, balance)
    credit.nil? ?
    (puts "#{date} || #{credit} || #{'%.2f' % debit} || #{'%.2f' % balance}") :
    (puts "#{date} || #{'%.2f' % credit} || #{debit} || #{'%.2f' % balance}")
  end
end
