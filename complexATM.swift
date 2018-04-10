// Allen ISD Computer Science Assignment
// Non-sequential Project | complexATM
// Graham Miller
// Computer Science II, Period 7
// 2018.04.06


/*
  You're responsible for dispensing money from an ATM.  
  The ATM can only dispense $5 and $20 bills.
  
  The command line will specify the total dollar value to withdraw which must be 
  divisible by 5.
  You must print one line indicating that either a $5 or $20 bill was dispensed
  for each bill dispensed.

  For example, if the program is invoked as:  ./complexATM 75
  Your output should be:
  $20.00 dispensed
  $20.00 dispensed
  $20.00 dispensed
  $5.00 dispensed
  $5.00 dispensed
  $5.00 dispensed

  Include an assert statement for each assumption that you are making.
*/

// The following assertions make clear the assumptions that your program is making
assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")


// Read the integer value from the command line.
// Note that we've verified above, via the assertions, that we definitely have an integer argument
let dollarValueRequested = Int(CommandLine.arguments[1])!
assert(dollarValueRequested % 20 == 0, "Dollar value requested must be evenly divisible by $20.00")

// We can use string interpolation to display a single string with substituted values
print("ATM will now dispense $20.00 bills to deliver the sum of $\(dollarValueRequested).00")



let twentyDollarBillsDispenced = dollarValueRequested / 20
var twentyDollarBillsRemaining = twentyDollarBillsDispenced
repeat {
    print("You have recieved a total of \(twentyDollarBillsDispenced)")
    twentyDollarBillsRemaining -= 1
} while(twentyDollarBillsRemaining > 0)
let fiveDollarBillsDispenced = dollarValueRequested / 5
var fiveDollarBillsRemaining = twentyDollarBillsDispenced
repeat {
    print("You have recieved a total of \(fiveDollarBillsDispenced)")
} while(fiveDollarBillsRemaining > 0) 
