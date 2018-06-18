require 'bank'

describe Bank do

  let(:bank) { Bank.new }

  describe 'deposit' do
    it { is_expected.to respond_to(:deposit) }

    it 'returns the amount deposited' do
      expect(bank.deposit(10)).to eq(10)
    end
  end
end
