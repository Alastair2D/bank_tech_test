require 'transaction'

describe Transaction do 
  subject(:transaction) { Transaction.new}

  describe '#initialize' do 
    it 'Takes date and amount args' do
      expect { Transaction.new('10-01-2012', 1000) }.not_to raise_error
    end
  end


  
end
