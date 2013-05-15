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

Outstanding questions
---------------------

### What license to use?
http://3.bp.blogspot.com/--EfX5P6Ny7Q/T6aSO_LdpNI/AAAAAAAAAgY/v-QFMmbP5As/s1600/OSS+License.png

### How to handle the ledger file?
The ledger binary expects to take a file as input as described above. A couple of ways to approach this:

  - Manage the flat file. This could potentially get complicated quickly, especially as the file grows. Not sure what tools are available for managing a flat file as a persistance layer with Rails.
  - Use traditional Rails persistance layer, and when shelling out to ledger regenerate the ledger file from the persistence layer.
  - Use traditional Rails persistance layer, and when shelling out to ledger use a socket/named pipe to mimic the ledger file on demand. Don't even know if this is feasible, somewhat depends on the behavior of ledger binary, if it just does a single pass scan of the file or if it does any sort of rewinding or random seeks.
  - Don't use the ledger binary at all, and re-implement the functionality using Rails/Ruby. May provide the cleanest opportunity for flexibilty of output and new features, not sure how much of a performance difference it would be against shelling to the ledger binary.
