require 'account'

describe 'Account Features' do 
  let(:account) { Account.new }

  describe '#Deposit' do 
    it 'Adds funds to their balance' do 
      account.deposit('10-01-12', 1000)
      expect(account.balance).to eq 1000
    end
  end



end
