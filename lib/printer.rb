class Printer

def printing(transactions)
  transactions << {
    date: "date",
    credit: "credit",
    debit: "debit",
    balance: "balance"
  }
  transactions.reverse_each { |t| puts "#{t.values.join(" || ")}" }
  transactions.pop
end

end
