require 'account'

describe Account do

  let(:balance) { double :balance }
  let(:account) { Account.new(balance) }

  describe '#deposit' do
    it 'returns the amount deposited' do
      expect(balance).to receive(:credit).with(10)
      account.deposit(10)
    end
  end

  describe '#withdrawal' do
    it 'returns the amount withdrawn' do
      expect(balance).to receive(:debit).with(10)
      account.withdrawal(10)
    end
  end

  describe '#print_statement' do
    it 'prints a statement' do
      expect(balance).to receive(:print_balance)
      account.print_statement
    end
  end
end
