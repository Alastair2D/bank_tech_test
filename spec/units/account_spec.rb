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
      ac1 = Account.new
      ac1.deposit(1000)
      expect(ac1.balance).to eq 1000
    end
  end



end
