require 'balance'

describe Balance do

  let(:statement) { double :statement }
  let(:balance) { Balance.new(statement) }

  describe '#initialize' do
    it 'has a total of zero' do
      expect(balance.total).to eq(0)
    end
  end

  describe '#credit' do
    it 'adds the amount to the total' do
      allow(statement).to receive(:add_transaction)
      expect { balance.credit(10) }.to change { balance.total }.by(10)
    end
  end

  describe '#debit' do
    it 'deducts the amount from the total' do
      allow(statement).to receive(:add_transaction)
      expect { balance.debit(10) }.to change { balance.total }.by(-10)
    end
  end

  describe '#print_balance' do
    it 'prints a balance' do
      expect(statement).to receive(:print_transactions)
      balance.print_balance
    end
  end
end
