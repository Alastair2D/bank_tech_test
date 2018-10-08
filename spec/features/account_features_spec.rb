require './lib/account'

describe 'Account Features' do 

  it 'Knows current balance' do 
    create_new_account
    account_balance
  end

  it 'Allows deposits' do 
    create_new_account
    deposit
  end



  def create_new_account 
    @ac1 = Account.new 
  end

  def account_balance 
    expect(@ac1.balance).to eq 0 
  end

    
end