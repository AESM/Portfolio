# 04_logical_operators_class_vs_instance.rb

require 'awesome_print'

## Day 04: Logical Operators + Class vs. Instance! ##
## Create a class (Person) and write a constructor that takes an integer
#(initial_age).  The constructor should check that initial_age is not negative.
#If initial_age is negative, set the instance's age equal to zero, then print
#the following string:
## - "This person is not valid, setting age to 0."
## Inside of this class, create an instance variable (age).  If initial_age is
#not negative, then set age to equal the value of initial_age.
## Also, write an instance method (am_i_old()) that prints whether people are
#old or not to the console.
## Lastly, create an instance function (year_passes()) that increases the age
#of the person instance by one
## INPUT:
## - Line one will contain the number of test cases (T)
## - Each following line/test case contains an integer (age) representing the
#  age of the person
## CONSTRAINTS:
## - 1 <= T <= 4
## - -5 <= age <= 30
## OUTPUT:
## In am_i_old(), do the following things:
## - Print "You are young."
##   + If the age of the Person instance is less than 13
## - Print "You are a teenager."
##   + If the age of the Person instance is equal or greater than 13, but
#    less 18
## - Print "You are old."
##   + If otherwise
## If age < 0, do the following things:
## - Print "This person is not valid, setting age to 0."

class Person
  attr_accessor :age

  def initialize(initial_age)
    @age = initial_age

    if @age < 0
      @age = 0
      puts 'This person is not valid, setting age to 0.'
    end
  end

  def am_i_old
    if @age >= 0 && @age < 13
      puts 'You are young.'
    elsif @age >= 13 && @age < 18
      puts 'You are a teenager.'
    else
      puts 'You are old.'
    end
  end

  def year_passes
    @age += 1
  end
end

## CODE PROVIDED WITH CHALLENGE
T = gets.to_i
for i in (1..T) do
  age = gets.to_i
  p = Person.new(age)
  p.am_i_old
  for j in (1..3) do
    p.year_passes
  end
  p.am_i_old
  puts ''
end
