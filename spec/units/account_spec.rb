require 'account'
require 'transaction'

describe Account do 
  subject(:account) { described_class.new}
  let(:mockDeposit) { double :deposit}
  let(:mockTransaction) { double :transaction }

  describe '#initialize' do 
    it 'Defaults with a balance of £0' do
      expect(subject.balance).to eq 0
    end
    it 'Defaults with an empty @transactionirbs array' do 
      expect(subject.transactions).to eq []
    end
  end

  describe '#deposit' do 
    it 'Allows users to add funds with a given date' do 
      subject.deposit('10-01-2012', 1000)
      expect(subject.balance).to eq 1000
    end
    it 'Displays a message to user after successful deposit' do 
      expect(subject.deposit('10-01-2012', 1000)).to eq 'You deposited £1000'
    end
    # it 'Creates a new instance of Transaction' do 
    #   subject.deposit('10-01-2012', 1000)
    #   expect(@transaction_klass).to receive(:new).with('10-01-2012', 1000).and_return(:transaction)
    # end
    it 'Adds transaction to the @transactions array' do 
      expect { subject.deposit('10-01-2012', 1000) }.to change { subject.transactions.length }.by 1
    end
  end
  

end
