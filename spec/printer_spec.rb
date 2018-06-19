require 'printer'

describe Printer do

  date = Time.now.strftime('%d/%m/%y')
  let(:transaction) { [{ date: date, credit: '%.2f' % 100, debit: nil, balance: '%.2f' % 100 }] }
  let(:printer) { Printer.new }

  describe '#printing' do
    it 'returns the amount deposited' do
      expect { printer.printing(transaction) }.to output("date || credit || debit || balance\n#{date} || 100.00 ||  || 100.00\n").to_stdout
    end
  end

end
