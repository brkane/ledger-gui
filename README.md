ledger-gui
==========

Web-based frontend for ledger-cli

Ledger is a command line accounting program for tracking and reporting on income/expenses. It is extremely fast, flexible and powerful.

Ledger works by parsing the contents of an input file, performing desired calculations and generating the request report output based on arguments given on the command line. The input file consists of a series of transactions, for example:

```
2013/01/16 * (T) Gas
    Assets:Checking:Car                 $-38.00
    Assets:Checking:Pay Bills           $37.28
    Assets:Checking:Savings             $.72
    Liabilities:Credit Card:AMEX        $-37.28
    Expenses:Auto:Gas                   $37.28
```

Some notes on the input:

  - All transations require a date and a title
  - Transations can be marked cleared '*', or pending '!'
  - Transaction can have an arbitrary code, enclosed in parentheses
  - Accounts are implicitly created whenever they are used in a transaction
  - All transactions must balance to zero (double entry accounting)

Reporting output allows you to view account balances, transaction registers, reconcile records with statements, perform cash flow analysis, etc.

This web frontend provides an easy way to maintain your ledger input file and to request different reports based on your transaction data.

