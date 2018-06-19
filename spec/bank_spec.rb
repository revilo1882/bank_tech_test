require 'bank'

describe Bank do

  let(:balance) { double :balance }
  let(:bank) { Bank.new(balance) }

  describe '#deposit' do
    it 'returns the amount deposited' do
      expect(balance).to receive(:credit).with(10)
      bank.deposit(10)
    end
  end

  describe '#withdrawal' do
    it 'returns the amount withdrawn' do
      expect(balance).to receive(:debit).with(10)
      bank.withdrawal(10)
    end
  end

  describe '#print_statement' do
    it 'prints a statement' do
      expect(balance).to receive(:print_balance)
      bank.print_statement
    end
  end
end
