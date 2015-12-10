require_relative 'journey'

module AdventOfCode
  module Day9
    # Solution to the exercise from Day 9 (http://adventofcode.com/day/9).
    # This is part 1.
    class Part1
      def run(input)
        Journey.new(input).shortest
      end
    end
  end
end
