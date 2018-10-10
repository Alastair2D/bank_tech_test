require 'transaction'

describe Transaction do 
  subject(:transaction) { Transaction.new}

  describe '#initialize' do 
    it 'Receives amount and balance args/keywords from transaction_helper' do 
      expect { Transaction.new(amount: 100, balance: 300) }.not_to raise_error
    end
    it 'Assigns transaction as a credit or debit' do 
      transaction = Transaction.new(amount: 100, balance: 300)
      expect(transaction.credit).to eq 100
      expect(transaction.debit).to eq 0 # nil
    end
  end


end
