require 'statement'

describe Statement do

  let(:printer) { double :printer }
  let(:transaction) { double :transaction }
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

  describe "#print_transactions" do
    it 'responds to printing' do
      expect(printer).to receive(:printing)
      statement.print_transactions(printer)
    end
  end
end
