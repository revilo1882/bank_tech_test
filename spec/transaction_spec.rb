require 'transaction'

describe Transaction do

  let(:transaction) { Transaction.new(10, nil, 100) }

  describe '#initialize' do
    it 'has a creates date' do
      date = Time.now.strftime('%d/%m/%y')
      expect(transaction.date).to eq(date)
    end

    it 'has creates a credit' do
      expect(transaction.credit).to eq(10)
    end

    it 'has creates a credit' do
      expect(transaction.debit).to eq(nil)
    end

    it 'has creates a credit' do
      expect(transaction.balance).to eq(100)
    end
  end
end
