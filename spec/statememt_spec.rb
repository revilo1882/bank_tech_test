require 'statement'

describe Statement do

  let(:statement) { Statement.new }

  describe '#initialize' do
    it 'starts with no transactions' do
      expect(statement.transactions.length).to eq(0)
    end
  end

  describe "#add_credit" do
    it 'adds a transaction to the hash' do
      expect { statement.add_credit(10, 10) }.to change { statement.transactions.length }.by(1)
    end
  end

  describe "#add_debit" do
    it 'adds a transaction to the hash' do
      expect { statement.add_debit(10, 10) }.to change { statement.transactions.length }.by(1)
    end
  end

  describe '#print_transactions' do
    it 'prints a blank statement' do
      expect(statement.print_transactions).to eq("date || credt || debit || balance \n")
    end
  end
end
