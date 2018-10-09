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

  def withdraw(date = Time.now, amount)
    raise 'Insufficient funds' if insufficient_funds?(amount)
    @balance -= amount
    # transaction = @transaction_klass.new(date_amount)
    # @transactions.push(transaction)
    # 'You withdrew £' + amount.to_s
  end

end


private 

def insufficient_funds?(amount)
  amount > @balance
end