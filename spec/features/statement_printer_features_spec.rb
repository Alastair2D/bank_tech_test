require 'statement_printer'

describe 'StatementPrinter Features' do 
let(:account) { Account.new }

  before {
    allow(Time).to receive(:now).and_return(Time.mktime(2012, 1, 10))
    account.deposit(1000)
    allow(Time).to receive(:now).and_return(Time.mktime(2012, 1, 13))
    account.deposit(2000)
    allow(Time).to receive(:now).and_return(Time.mktime(2012, 1, 14))
    account.withdraw(500)
  }

  it 'prints the account statement' do
    expect { account.statement }.to output(
      "date || credit || debit || balance\n"\
      "14/01/2012 ||  || 500 || 2500\n"\
      "13/01/2012 || 2000 ||  || 3000\n"\
      "10/01/2012 || 1000 ||  || 1000\n"
    ).to_stdout
  end

end