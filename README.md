 # Bank_Tech_Test_Ruby

 [![Build Status](https://travis-ci.com/Alastair2D/bank-tech-test-ruby.svg?branch=master)](https://travis-ci.org/Alastair2D/bank_tech_test_ruby)

## Overview
Week 10 at Makers revolves around the type of tech tests graduates are likely to be asked to complete by an employer. This Bank test was given to us with the following specification.

## User Instructions:

To install, run and use this application follow these steps:

1. [Fork or clone this repository](https://github.com/Alastair2D/bank_tech_test)
2. Run: `bundle install`
3. To use the app, open a Ruby REPL: e.g. `irb` from the command line
4. `require './lib/client` to load the Account class and, in doing so, all dependent classes
5. Execute Tests & View Coverage: `rspec --fd`
6. Create a new bank account: `ac1 = Account.new`
7. Make a deposit of e.g. £100: `ac1.deposit(100)`
8. Make a withdrawl of e.g. £20: `ac1.withdraw(20)`
9. Print out a statement: `ac1.statement`
10. If you have the appetite, star the repo to be alerted to gripping upcoming developments


### Client (Makers) Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### User Stories
```
As a customer, 
so I can store my money, 
I want to able to make a deposit
```

```
US2. As a customer, 
so I can access my money, 
I want to be able to make a withdrawl
```

```
As a customer, 
so I can see the details of my account, 
I want to be able to print a statement
```

### Features
Must-Have Features:  Deposit, Withdraw, Print_Statement
Nice-to-Have Features: Store interactions in memory

### User Interactions 
* UI1. Account.new - Create a new instance of an Account
* UI2. Account.deposit(date, amount) - Make a deposit & update balance
* UI3. Account.withdraw(date, amount) - Make a withdrawl & update balance
* UI4. Account.statement - Prints statement

### Workflow
[Trello Board - Bank_Tech_Test_Ruby](https://trello.com/b/u1DJkPsD/bank-tech-test)

### Domain Model
[Domain Diagram - User Stories, Classes & Methods](https://www.draw.io/#G19-wYGSpyvmUiElYmEWRShAYgVDx7jjIy)

![Domain Model](https://github.com/Alastair2D/bank_tech_test_ruby/blob/master/images/Bank%20Tech%20Test%20-%20Domain%20Model.png)
