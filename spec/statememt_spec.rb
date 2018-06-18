require 'statement'

describe Statement do

  let(:statement) { Statement.new }

  describe '#initialize' do
    it 'starts with no transactions' do
      expect(statement.transactions.length).to eq(0)
    end
  end

  describe "#add_transaction" do
    it 'adds a transaction to the hash' do
      expect { statement.add_transaction(10) }.to change { statement.transactions.length }.by(1)
    end
  end
end
