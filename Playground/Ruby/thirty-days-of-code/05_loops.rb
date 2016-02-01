# 05_loops.rb

require 'awesome_print'

## Day 05: Loops! ##
## Given three integers (a, b, and N) output the following series:
## - a + 2^0 b, a + 2^0 b + 2^1 b, ....., a + 2^0 b + 2^1 b + ... + 2^(N − 1) b
## INPUT:
## - Line one will contain the number of test cases (T)
## - Each following line/test case contains three integers (a, b, N)
## CONSTRAINTS:
## - 0 <= T <= 500
## - 0 <= a, b <= 50
## - 1 <= N <= 15
## OUTPUT:
## The answer of each calculation in following series (on one line):
## - a + 2^0 b, a + 2^0 b + 2^1 b, ....., a + 2^0 b + 2^1 b + ... + 2^(N − 1) b

class SeriesSolver
  attr_accessor :abn

  def initialize(abn)
    @abn = abn
  end

  def series_type_one
    a = abn[0].to_i
    b = abn[1].to_i
    n = abn[2].to_i
    i = 0
    calc = a
    output = []

    while i < n
      calc += (2**i * b)
      output.push(calc)
      i += 1
    end
    output.join(' ')
  end
end

test_cases = gets.to_i
# for i in (0...test_cases) do
(0...test_cases).each do
  # abn = gets.split(' ')
  abn = gets.split(/\s/)
  day_five = SeriesSolver.new(abn)
  puts day_five.series_type_one
end
