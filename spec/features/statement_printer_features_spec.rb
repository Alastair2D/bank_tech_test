require 'statement_printer'

describe 'StatementPrinter Features' do
let(:account) { Account.new }

  before {
    allow(Time).to receive(:now).and_return(Time.mktime(2012, 1, 10))
    account.deposit(500)
    allow(Time).to receive(:now).and_return(Time.mktime(2012, 1, 13))
    account.deposit(2000)
    allow(Time).to receive(:now).and_return(Time.mktime(2012, 1, 14))
    account.withdraw(1000)
  }

  it 'prints the account statement' do
    expect { account.statement }.to output(
      "date || credit || debit || balance\n"\
      "2012-01-14 00:00:00 +0000 ||  || 1000 || 1500\n"\
      "2012-01-13 00:00:00 +0000 || 2000 ||  || 2500\n"\
      "2012-01-10 00:00:00 +0000 || 500 ||  || 500\n"
    ).to_stdout
  end

end
