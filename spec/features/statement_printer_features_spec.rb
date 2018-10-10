require 'statement_printer'

describe 'StatementPrinter Features' do 
  # let(:account) { Account.new }

      it 'Displays transactions' do
        ac1 = Account.new
        ac1.deposit(1000)
        expect(ac1.statement).to eq ("date || credit || debit || balance \n 10/10/18 || 1000 ||  || 1000 \n")  
      end


end
