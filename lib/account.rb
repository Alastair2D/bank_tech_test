require_relative './transaction'

class Account 

  attr_reader :balance, :transactions

  def initialize(transaction_class = Transaction)
    @transaction_class = transaction_class
    @balance = 0
    @transactions = []
  end

  def deposit(date, amount)
    @balance += amount
    transaction = @transaction_class.new(date, amount)
    @transactions.push(transaction)
    'You deposited £' + (amount.to_s)
  end


end
