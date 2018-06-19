require 'bank'

describe Bank do

  let(:balance) { double :balance, credit: 10, debit: 10 }
  let(:bank) { Bank.new(balance) }

  describe '#deposit' do
    it 'returns the amount deposited' do
      expect(bank.deposit(10)).to eq(10)
    end
  end

  describe '#withdrawal' do
    it 'returns the negaitve amount withdrawn' do
      expect(bank.withdrawal(10)).to eq(10)
    end
  end
end
