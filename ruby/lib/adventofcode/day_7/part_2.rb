require_relative 'executor'
require_relative 'parser'

module AdventOfCode
  module Day7
    # Solution to the exercise from Day 7 (http://adventofcode.com/day/7).
    # This is part 2.
    class Part2
      def run(input)
        lines = input.lines.unshift('956 -> b')
        Executor.new(Parser.new(lines).statements).execute
      end
    end
  end
end
