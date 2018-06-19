# bank_tech_test

User Stories

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



Domain model

```
    Bank                |     Balance             |  Statement
________________________|_________________________|____________________________
  Balance.new           |    @total = 0           |    @transactions {}
  Statement.new         |                         |
________________________|_________________________|____________________________
  deposit(amount)   ----|---->credit(amount)  ----|----> add_transaction(credit
  withdrawal(amount)----|----> debit(amount)  ----|----> ,debit, balance, date)
  print_statement() ----|-------------------------|----> print_transactions()
________________________|_________________________|____________________________
        <--------------------------------------------------output
```

Code example

```
[1] pry(main)> bank = Bank.new
=> #<Bank:0x00007ffe0034b290
 @balance=
  #<Balance:0x00007ffe0034b268
   @statement=#<Statement:0x00007ffe0034b240 @transactions=[]>,
   @total=0.0>>
[2] pry(main)> bank.deposit(1000)
=> [{:date=>"19/06/18",
  :credit=>"1000.00",
  :debit=>nil,
  :balance=>"1000.00"}]
[3] pry(main)> bank.deposit(2000)
=> [{:date=>"19/06/18",
  :credit=>"1000.00",
  :debit=>nil,
  :balance=>"1000.00"},
 {:date=>"19/06/18",
  :credit=>"2000.00",
  :debit=>nil,
  :balance=>"3000.00"}]
[4] pry(main)> bank.withdraw(500)
=> [{:date=>"19/06/18",
  :credit=>"1000.00",
  :debit=>nil,
  :balance=>"1000.00"},
 {:date=>"19/06/18",
  :credit=>"2000.00",
  :debit=>nil,
  :balance=>"3000.00"},
 {:date=>"19/06/18",
  :credit=>nil,
  :debit=>"500.00",
  :balance=>"2500.00"}]
[5] pry(main)> bank.print_statement
date || credit || debit || balance
19/06/18 ||  || 500.00 || 2500.00
19/06/18 || 2000.00 ||  || 3000.00
19/06/18 || 1000.00 ||  || 1000.00
=> {:date=>"date", :credit=>"credit", :debit=>"debit", :balance=>"balance"}
```
