require 'account'

describe Account do 
  subject(:account) { described_class.new}
  let(:mockBalance) { double :balance}

  describe '#initialize' do 
    it 'defaults with a balance of £0' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#deposit' do 
    it 'allows users to add funds' do 
      ac1 = Account.new
      ac1.deposit(1000)
      expect(subject.balance).to eq 1000
    end
  end




end
