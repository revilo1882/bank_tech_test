require 'transaction'

describe Transaction do

  let(:transaction) { Transaction.new }

  describe '#create' do
    it 'creates a hash' do
      date = Time.now.strftime('%d/%m/%y')
      expect(transaction.create(10, nil, 10)).to eq({ date: date, credit: 10, debit: nil, balance: 10 })
    end
  end
end
