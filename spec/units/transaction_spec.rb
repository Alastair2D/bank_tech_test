require 'transaction'

describe Transaction do 
  subject(:transaction) { Transaction.new}

  describe '#initialize' do 
    it 'Receives amount and balance args/keywords from transaction_helper' do 
      expect { Transaction.new(amount: 100, balance: 300) }.not_to raise_error
    end


  end


  
end
