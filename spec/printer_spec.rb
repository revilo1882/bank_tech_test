require 'printer'

describe Printer do

  date = Time.now.strftime('%d/%m/%y')
  let(:transaction) { double :transaction, date: date, credit:100, debit: nil, balance: 100 }
  let(:transaction2) { double :transaction2, date: date, credit:nil, debit: 10, balance: 90 }
  let(:printer) { Printer.new }

  describe '#printing' do
    it 'returns the amount deposited in the correct format' do
      transactions = [transaction]
      expect { printer.printing(transactions) }.to output("date || credit || debit || balance\n#{date} || 100.00 ||  || 100.00\n").to_stdout
    end

    it 'prints in the correct order' do
      transactions = [transaction, transaction2]
      expect { printer.printing(transactions) }.to output("date || credit || debit || balance\n#{date} ||  || 10.00 || 90.00\n#{date} || 100.00 ||  || 100.00\n").to_stdout
    end
  end
end
