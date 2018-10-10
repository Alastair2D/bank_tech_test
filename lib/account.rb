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

  def deposit(type = credit, amount)
    raise 'Invalid request' if invalid_request?(amount)
    @balance += amount 
    transaction_helper(amount)
  end

  def withdraw(amount)
    raise 'Invalid request' if invalid_request?(amount)
    raise 'Insufficient funds' if insufficient_funds?(amount)
    @balance -= amount 
    transaction_helper(amount)
  end

  def statement
    @printer.print(@transactions)
  end

end


private 

def insufficient_funds?(amount)
  amount > @balance
end

def transaction_helper(amount)
  @transactions.push(@transaction_klass.new(amount: amount, balance: @balance))
  return "Current balance: £#{@balance}"
end

def invalid_request?(amount)
  amount < 0 
end


