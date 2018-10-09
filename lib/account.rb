require_relative './transaction'
require_relative './statement_printer'

class Account 

  attr_reader :balance, :transactions

  def initialize(transaction_klass = Transaction, printer = StatementPrinter)
    @transaction_klass = transaction_klass
    @printer = printer
    @balance = 0
    @transactions = []
  end

  def deposit(date = Time.now, amount)
    @balance += amount
    transaction = @transaction_klass.new(date, amount)
    @transactions.push(transaction)
    'You deposited £' + (amount.to_s)    # return "Current balance: #{@balance}"
  end

  def withdraw(date = Time.now, amount)
    raise 'Insufficient funds' if insufficient_funds?(amount)
    @balance -= amount
    transaction = @transaction_klass.new(date, -amount)
    @transactions.push(transaction)
    'You withdrew £' + amount.to_s       # return "Current balance: #{@balance}"
  end

  def statement
    @printer.print(@transactions)
  end

end


private 

def insufficient_funds?(amount)
  amount > @balance
end