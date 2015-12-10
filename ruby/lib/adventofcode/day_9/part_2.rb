require_relative 'journey'

module AdventOfCode
  module Day9
    # Solution to the exercise from Day 9 (http://adventofcode.com/day/9).
    # This is part 2.
    class Part2
      def run(input)
        Journey.new(input).longest
      end
    end
  end
end
