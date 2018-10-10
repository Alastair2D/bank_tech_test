require 'statement_printer'

describe StatementPrinter do 
  subject(:statement_printer) { StatementPrinter.new}
  let(:depositTransaction) { double :transaction, date: '2000.1.1', amount: 5000 }
  let(:withdrawlTransaction) { double :transaction, date: '2000.1.2', amount: -3000 }
  let(:account) { Account.new }

  describe '#print' do 
    before { @transactions = [depositTransaction, withdrawlTransaction] }
    
    it 'displays transaction history' do 
      # ac1 = Account.new
      # ac1.statement  
      expect(subject.print(@transactions)).to eq(
        "date || credit || debit || balance\n"\
        "2000.1.1 || 5000  ||  || 5000\n"\
        "2000.1.2 ||  || -3000 || 2000\n"
      )    
      expect(subject).to respond_to(:print)
    end
  end


end
