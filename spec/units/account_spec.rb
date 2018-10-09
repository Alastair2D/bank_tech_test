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
      subject.deposit('10-01-12', 1000)
      expect(subject.balance).to eq 1000
    end
    it 'Allows users to add funds with a given date' do 
      expect(subject.deposit('10-01-12', 1000)).to eq 'You deposited £1000'
    end
  end
  

end
