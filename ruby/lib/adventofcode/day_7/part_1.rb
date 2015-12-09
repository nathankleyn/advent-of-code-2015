require_relative 'executor'
require_relative 'parser'

module AdventOfCode
  module Day7
    # Solution to the exercise from Day 7 (http://adventofcode.com/day/7).
    # This is part 1.
    class Part1
      def run(input)
        Executor.new(Parser.new(input.lines).statements).execute
      end
    end
  end
end
