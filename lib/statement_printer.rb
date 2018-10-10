class StatementPrinter

  def self.print(transactions)
    puts "date || credit || debit || balance " 
    puts self.format(transactions)
  end

  def self.format(transactions)
    transactions.each.map { |transaction| 
    "#{format_date(transaction.date)} || "\
    "#{transaction.credit} || "\
    "#{transaction.debit} || "\
    "#{transaction.balance}"
    }.join("\n")
  end

  def self.format_date(date)
    date.strftime("%d/%m/%y")
  end
   

end

