require 'account'
require 'statement'
require 'printer'
require 'transaction'

describe '#feature test' do
  it 'prints the expected statement' do
    account = Account.new
    account.deposit(1000)
    account.withdrawal(400)
    account.deposit(2000)
    expect { account.print_statement }.to output("date || credit || debit || balance\n#{Time.now.strftime('%d/%m/%y')} || 2000.00 ||  || 2600.00\n#{Time.now.strftime('%d/%m/%y')} ||  || 400.00 || 600.00\n#{Time.now.strftime('%d/%m/%y')} || 1000.00 ||  || 1000.00\n").to_stdout
  end
end
