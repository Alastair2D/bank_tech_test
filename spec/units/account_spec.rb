require 'account'

describe Account do 
  subject(:account) { described_class.new}
  let(:mockDeposit) { double :deposit}

  describe '#initialize' do 
    it 'Defaults with a balance of £0' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#deposit' do 
    it 'Allows users to add funds' do 
      subject.deposit(1000)
      expect(subject.balance).to eq 1000
    end
    it 'Displays message to customer after successful deposit' do
      expect(subject.deposit(1000)).to_return ('You have deposited £ ' + mockDeposit.to_s)      
    end
    it 'Allows users to add funds with a given date' do 
      
  end
  


end
