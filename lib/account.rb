require_relative './transaction'

class Account 

  attr_reader :balance, :transactions

  def initialize(transaction_klass = Transaction)
    @transaction_klass = transaction_klass
    @balance = 0
    @transactions = []
  end

  def deposit(date = Time.now, amount)
    @balance += amount
    transaction = @transaction_klass.new(date, amount)
    @transactions.push(transaction)
    'You deposited £' + (amount.to_s)
  end

  


end
