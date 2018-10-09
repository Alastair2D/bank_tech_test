# require 'date'

class Account 

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(date, amount)
    @balance += amount
    'You deposited £' + (amount.to_s)
  end


end
