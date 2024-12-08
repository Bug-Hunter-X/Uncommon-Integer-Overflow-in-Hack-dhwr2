# Uncommon Integer Overflow Bug in Hack

This repository demonstrates an uncommon integer overflow bug in Hack.  The bug is caused by adding 1 to a large integer value. This is uncommon because integer overflows are more typically associated with unsigned integers. 

The `bug.hack` file contains the buggy code.  The `bugSolution.hack` file contains a solution that mitigates the potential integer overflow.

## How to reproduce

1.  Clone this repository.
2.  Run the `bug.hack` file using a Hack compiler. (e.g hhvm) You will need to adapt it to run on your system.
3. Observe the potential for unexpected results (e.g., negative result) if a sufficiently large integer is passed to `baz()` function.

## Solution

The solution involves carefully checking for potential overflow before performing the addition.  The `bugSolution.hack` file shows one approach.