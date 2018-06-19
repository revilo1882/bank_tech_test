require 'bank'

describe Bank do

  let(:balance) { double :balance, credit: 10, debit: 10 }
  let(:bank) { Bank.new(balance) }

  describe '#deposit' do
    it 'returns the amount deposited' do
      expect(bank.deposit(10)).to eq(10)
    end
  end

  describe '#withdraw' do
    it 'returns the negaitve amount withdrawn' do
      expect(bank.withdraw(10)).to eq(10)
    end
  end
end
