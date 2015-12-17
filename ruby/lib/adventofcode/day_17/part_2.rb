require_relative 'part_1'

module AdventOfCode
  module Day17
    # Solution to the exercise from Day 17 (http://adventofcode.com/day/17).
    # This is part 1.
    class Part2 < Part1
      def run(input, expected_total)
        buckets = parse_lines(input)
        combinations(buckets, expected_total)
          .find { |xs| !xs.empty? }.length
      end
    end
  end
end
