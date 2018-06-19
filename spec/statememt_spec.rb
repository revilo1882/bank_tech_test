require 'statement'

describe Statement do

  let(:statement) { Statement.new }

  describe '#initialize' do
    it 'starts with no transactions' do
      expect(statement.transactions.length).to eq(0)
    end
  end

  describe "#add_transaction" do
    it 'adds a credit to the hash' do
      expect { statement.add_transaction(10, nil, 10) }.to change { statement.transactions.length }.by(1)
    end

    it 'adds a debit to the hash' do
      expect { statement.add_transaction(nil, 10, 10) }.to change { statement.transactions.length }.by(1)
    end
  end

  describe '#print_transactions' do
    it 'prints a blank statement' do
      expect { statement.print_transactions }.to output("date || credit || debit || balance\n").to_stdout
    end

    it 'prints after debits and credits are added' do
      date = Time.now.strftime('%d/%m/%y')
      statement.add_transaction(100, nil, 100)
      statement.add_transaction(nil, 10, 90)
      expect { statement.print_transactions }.to output("date || credit || debit || balance\n#{date} ||  || 10.00 || 90.00\n#{date} || 100.00 ||  || 100.00\n").to_stdout
    end
  end
end
