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

    Bank                |     Balance             |  Statement
________________________|_________________________|____________________________
  Balance.new           |    @total = 0           |    @transactions {}
  Statement.new         |                         |
________________________|_________________________|____________________________
  deposit(amount)   ----|---->credit(amount)  ----|----> add_transaction(credit
  withdrawal(amount)----|----> debit(amount)  ----|----> ,debit, balance, date)
  print_statement() ----|-------------------------|----> print_transactions()
________________________|_________________________|____________________________
        <---------------------------------------------------output
