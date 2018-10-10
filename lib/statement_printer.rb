class StatementPrinter

  def self.print(transactions)
    "date || credit || debit || balance\\n#{format(transactions)}\n"
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

