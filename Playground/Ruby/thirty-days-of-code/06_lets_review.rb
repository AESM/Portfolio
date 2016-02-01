# 06_lets_review.rb

require 'awesome_print'

## Day 06: Let's Review! ##
## Write a program that draws a staircase structure, given a required height,
#like this:
     #
    ##
   ###
  ####
 #####
######
## Note: The last line has zero spaces before it.
## INPUT:
## - An integer (N) representing the height of the staircase
## OUTPUT:
## - Print a staircase
##   + The height is N
##   + Each level consists of N - 1 spaces, followed by N # symbols

class StaircaseMaker
  attr_accessor :height, :space_row, :step

  def initialize(height)
    @height = height
    @step = '#'
    @space_row = ''
  end

  def step_builder
    space = ' '
    space_row = (space * (height - 1)) + step
    i = height - 1

    puts space_row

    while i > 0
    # until i == 0 ## ALTERNATIVE TO LINE ABOVE
      space_row[0] = ''
      space_row += step
      i -= 1
      puts space_row
    end
  end
end

height = gets.strip.to_i
staircase = StaircaseMaker.new(height)
staircase.step_builder
