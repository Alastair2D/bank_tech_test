class Transaction

  attr_reader :date, :credit, :debit, :balance

  def initialize(amount:, balance:)
    @date = current_date_time 
    credit_or_debit(amount)
    @balance = balance
  end


  private 

  def current_date_time
    Time.now
  end

  def credit_or_debit(amount)
    amount.negative? ? @debit = amount.abs : @credit = amount
  end

end
