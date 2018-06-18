require 'balance'

describe Balance do

  let(:balance) { Balance.new }

  describe '#total' do
    it 'initializes with zero' do
      expect(balance.total).to eq(0)
    end
  end
end
