module AdventOfCode
  module Day12
    # Solution to the exercise from Day 12 (http://adventofcode.com/day/12).
    # This is part 1.
    class Part1
      def run(input)
        input.scan(/(-?\d+)/).map(&:first).map(&:to_i).inject(0, :+)
      end
    end
  end
end
