require 'balance'

describe Balance do

  let(:balance) { Balance.new }

  describe '#total' do
    it 'initializes with zero' do
      expect(balance.total).to eq(0)
    end
  end

  describe '#credit' do
    it 'adds the amount to the total' do
      expect { balance.credit(10) }.to change { balance.total }.by(10)
    end
  end

  describe '#debit' do
    it 'deducts the amount from the total' do
      expect { balance.debit(10) }.to change { balance.total }.by(-10)
    end
  end
end
