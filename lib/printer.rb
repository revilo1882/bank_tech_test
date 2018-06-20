class Printer

  def printing(transactions)
    puts "date || credit || debit || balance"
    transactions.reverse_each do |t|
      if t.credit.nil?
        puts "#{t.date} || #{t.credit} || #{'%.2f' % t.debit} || #{'%.2f' % t.balance}"
      else
        puts "#{t.date} || #{'%.2f' % t.credit} || #{t.debit} || #{'%.2f' % t.balance}"
      end
    end
  end
end
