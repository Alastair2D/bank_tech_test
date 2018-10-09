require 'statement_printer'

describe 'Statement Features' do 
  let(:account) { Account.new }

   context 'Account has transactions to print' do 
      # before { account.deposit('10/01/2012', 1000) }
      # before { account.deposit('13/01/2012', 2000) }
      # before { account.withdraw('14/01/2012', 500) }

      it 'Displays transactions' do
        ac1 = Account.new
        ac1.deposit('10/01/2012', 1000)
        expect { ac1.statement }.to output('test')  
        # expect { ac1.statement }.to output('10/01/2012', 1000)  
      end
    end

end
