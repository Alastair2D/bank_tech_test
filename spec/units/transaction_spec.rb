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
      expect(transaction.debit).to eq nil
    end
    it 'Assigns transaction as a credit or debit' do 
      transaction = Transaction.new(amount: -100, balance: 300)
      expect(transaction.credit).to eq nil
      expect(transaction.debit).to eq 100
    end
  end

  describe 'Attributes of a Transaction' do 
    before { allow(Time).to receive(:now).and_return(Time.mktime(1984,1,7)) }
    before { @t1 = Transaction.new(amount: 100, balance: 200) }
    
    it 'Knows the date when transaction occurred' do 
      expect(@t1.date).to eq Time.mktime(1984,1,7)
    end

    it 'Knows the appropriate credit' do 
      expect(@t1.credit).to eq 100
    end

    it 'Knows the appropriate debit' do
      expect(@t1.debit).to eq nil 
    end

    it 'Knows the new balance' do 
      expect(@t1.balance).to eq 200
    end
  end

end
