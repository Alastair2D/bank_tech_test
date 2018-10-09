require 'account'

describe 'Withdrawl Features' do
  let(:account) { Account.new }

    context 'Amount requested allowed' do 
      before { account.deposit(1000) }
      it 'Subtracts withdrawl amount from balance' do
        account.withdraw(550)
        expect(account.balance).to eq 450
      end
    end

    context 'Amount requested not allowed' do 
      it 'Raises error: Insufficient funds' do 
        expect { account.withdraw(250) }.to raise_error('Insufficient funds')
      end
    end

  end


