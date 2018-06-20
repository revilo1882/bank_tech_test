require 'account'

describe Account do

  let(:statement) { double :statement }
  let(:account) { Account.new(statement) }

  describe '#initialize' do
    it 'has a total of zero' do
      expect(account.total).to eq(0)
    end
  end

  describe '#credit' do
    it 'adds the amount to the total' do
      allow(statement).to receive(:add_transaction)
      expect { account.deposit(10) }.to change { account.total }.by(10)
    end
  end

  describe '#debit' do
    it 'deducts the amount from the total' do
      allow(statement).to receive(:add_transaction)
      expect { account.withdrawal(10) }.to change { account.total }.by(-10)
    end
  end

  describe '#print_balance' do
    it 'prints a balance' do
      expect(statement).to receive(:print_transactions)
      account.print_statement
    end
  end
end
