require 'statement_printer'

describe StatementPrinter do 
  subject(:statement_printer) { StatementPrinter.new}
  let(:depositTransaction) { double :transaction, date: '1.1.2011', amount: 5000 }
  let(:withdrawlTransaction) { double :transaction, date: '2.1.2011', amount: -3000 }
  # let(:account) { Account.new }

  # describe '#print' do 
  #   it 'displays transaction history' do 
  #     ac1 = Account.new
  #     ac1.statement      
  #     expect(subject).to respond_to(:print)
  #   end
  # end


end
