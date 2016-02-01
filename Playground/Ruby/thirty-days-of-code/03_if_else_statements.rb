# 03_if_else_statements.rb

require 'awesome_print'

## Day 03: if-else Statements! ##
## Using "if-else" you can perform decision making in your code.
## INPUT:
## - A single line of input (integer N)
## CONSTRAINTS:
## - 1 <= N <= 100
## OUTPUT:
## - If N is odd, print "Weird"
## - If N is even and, in between the range of 2 and 5 (inclusive), print
#  "Not Weird"
## - If N is even and, in between the range of 6 and 20 (inclusive), print
#  "Weird"
## - If N is even and N > 20, print "Not Weird"
## PSEUDOCODE OUTLINE:
## - Print "Weird"...
##   + If N is odd
##   + If N is even and 6 <= N <= 20
## - Print "Not Weird"...
##   + If N is even, 2 <= N <= 5, and N > 20

def weirdinator
  int = gets.to_i
  if int.odd? || (int.even? && (6 <= int) && (int <= 20))
    puts 'Weird'
  else
    puts 'Not Weird'
  end
end

weirdinator
