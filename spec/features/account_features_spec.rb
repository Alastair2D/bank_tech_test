require 'account'

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

  def deposit
    @ac1.deposit(1000)
    expect(@ac1.balance).to eq 1000
  end
    
end