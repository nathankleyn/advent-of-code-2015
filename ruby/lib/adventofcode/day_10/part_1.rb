module AdventOfCode
  module Day10
    # Solution to the exercise from Day 10 (http://adventofcode.com/day/10).
    # This is part 1.
    class Part1
      def run(input)
        input.strip.chars.slice_when { |i, j| i != j }.map { |g| g.length.to_s + g.first }.join
      end
    end
  end
end
