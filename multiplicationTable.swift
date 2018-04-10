// Allen ISD Computer Science Assignment
// Non-sequential Project | multiplicationTable
// John Williams
// Computer Science I, Period 1
// 2018.01.23


/*
  You're responsible for printing a grid displaying a multiplication table.
  The single argument on the command line will specify the size of the grid.
  For example, if the program is invoked as:, ./multiplicationTable 3 
  Your output should be:
       1   2   3
  1    1   2   3
  2    2   4   6
  3    3   6   9

  You may assume that the maximum grid size is 20.

  Be sure that the numbers in your grid are aligned (i.e. columns are flush right)
  For example:
      3
      6
      9
     12

     Include an assert statement for each assumption that you are making. */
assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")
// Continue with your code here
let gridSize = Int(CommandLine.arguments[1])!
assert(gridSize <= 20, "Grid is too big")
for rows in 0...gridSize + 1 {
    print(rows, terminator: "")
    for columns in 0...gridSize + 1 {
        print(columns, terminator: "")
}
    print()
}     
