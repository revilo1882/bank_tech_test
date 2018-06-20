# bank_tech_test

This is a practice tech test set by Makers Academy to prepare us for tech test set in applying for junior developer roles.  The purpose of this test is to produce the best code possible can when there is a minimal time pressure and to practice OO design and TDD skills.

## Specification

### Requirements

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

## Approach

I began by creating user stories and drew a domain model (both shown below) on how I believed the final system would work.

I started with a Account object for the user to interact with. This had a deposit and withdrawal method which would feed into a Balance object which tracks the account balance.  The balance object would then feed into the statement object which would store each transaction.  After this I implemented a print_statement method in the Account object which would look into the Statement and return a printout of all the transactions.

After building this functionality I realised that the statement object was doing too many things.  First of all I extracted the print_transactions method to a separate Printer object which would just deal with the printing of the statement.  Secondly I decided the statement should just store the transaction history, and each transaction could be created as a new instance of a separate object so I created a Transaction object.

The whole project was build using a TDD approach and has 17 test all passing with 100% coverage.  Rubocop and a ruby linter were used as style guides.

##User Stories

```
In order to put money into my bank account
As a customer
I want to be able to make a deposit
```

```
In order to take money out of my bank account
As a customer
I want to be able to make a withdrawal
```

```
In order to see my balance and account history
As a customer
I want to be able to print my account statement
```

```
In order that I can see dates of transactions and balances
As a customer
I would like the dates of my deposits and withdrawals logged
```



##Initial Domain Model

```
    Account             |     Balance             |  Statement
________________________|_________________________|____________________________
  Balance.new           |    @total = 0           |    @transactions []
                        |    Statement.new        |
________________________|_________________________|____________________________
  deposit(amount)   ----|---->credit(amount)  ----|----> add_transaction(credit
  withdraw(amount)  ----|----> debit(amount)  ----|----> ,debit, balance, date)
  print_statement() ----|-------------------------|----> print_transactions()
________________________|_________________________|____________________________
        <--------------------------------------------------output
```

##Instructions

Clone this repo to your local machine
```
git clone https://github.com/revilo1882/bank_tech_test.git
```

Install the necessary gems
```
$ bundle install
```

Run RSPec to ensure the tests all pass
```
$ rspec
```

Play around in IRB to see the functionality
```
$ irb -r ./lib/account.rb
```

Code example

```
account = Account.new
account.deposit(1000)
account.withdrawal(500)
account.deposit(2000)
account.print_statement

date || credit || debit || balance
20/06/18 || 2000.00 ||  || 2500.00
20/06/18 ||  || 500.00 || 500.00
20/06/18 || 1000.00 ||  || 1000.00

```
