# 02_arithmetic.rb

require 'awesome_print'

## Day 02: Arithmetic! ##
## If given the meal price, tip percentage, and tax percentage, we can find
# the final price of a meal.
## INPUT:
## - Three numbers (M, T, and X) each on separate lines
##   + M will be a double representing the original price of the meal
##   + T will be a integer representing the percentage that the customer wants
#    to tip based off of the original price of the meal
##   + X will be an integer representing the tax percentage that the customer
#    has to pay based off of the original price of the meal
## OUTPUT:
## - A string "The final price of the meal is $~."
##   + '~' represents the final price of the meal
##   + '~' is rounded to the nearest integer (dollar)
## PSEUDOCODE OUTLINE:
##   PSEUDO-INPUT:
# 12.00
# 20
# 8
##   PSEUDO-OUTPUT:
# "The final price of the meal is $15."
## PSEUDOCODE TRANSLATION:
## - tip = (T * M) / 100
## - tax = (X * M) / 100
## - true price = M + tip + tax
## - rounded price = ||true price||

def meal_price
  meal = gets.to_f
  tip = gets.to_i
  tax = gets.to_i
  final = (meal + (((tip * meal) / 100) + ((tax * meal) / 100))).round
  # print "meal is #{meal}, tip is #{tip}, tax is #{tax}"
  puts "The final price of the meal is $#{final}."
end

meal_price
