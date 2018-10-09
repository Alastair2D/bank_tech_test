require 'account'
require 'transaction'

describe Account do 
  subject(:account) { Account.new }
  let(:statement_printer)  { double :statement_printer }
  let(:mockTransaction) { double :transaction }

  describe '#initialize' do 
    it 'Defaults with a balance of £0' do
      expect(subject.balance).to eq 0
    end
    it 'Defaults with an empty @transactionirbs array' do 
      expect(subject.transactions).to eq []
    end
  end

  describe '#deposit' do 
    it 'Allows users to add funds with a given date' do 
      subject.deposit('10-01-2012', 1000)
      expect(subject.balance).to eq 1000
    end
    it 'Displays a message to user after successful deposit' do 
      expect(subject.deposit('10-01-2012', 1000)).to eq 'You deposited £1000'
    end
    it 'Adds transaction to the @transactions array' do 
      expect { subject.deposit('10-01-2012', 1000) }.to change { subject.transactions.length }.by 1
    end
  end

  describe '#withdraw' do 
    before { subject.deposit(1000) }
    it 'Allows users to withdraw funds' do 
      subject.withdraw(200)
      expect(subject.balance).to eq 800
    end
    it 'Adds transaction to the @transactions array' do 
      expect { subject.withdraw(100) }.to change { subject.transactions.length }.by 1
    end

    context 'Requested withdrawl exceeds funds' do 
      it 'raises error: Insufficient funds' do 
        expect { subject.withdraw(2000) }.to raise_error 'Insufficient funds'  
      end
    end
  end

  describe '#statement' do 
    it 'calls #print on StatementPrinter' do 
      expect(statement_printer).to receive(:print).with(subject.transactions)
      subject.statement
    end
  end


end
