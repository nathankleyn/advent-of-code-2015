module AdventOfCode
  module Day17
    # Solution to the exercise from Day 17 (http://adventofcode.com/day/17).
    # This is part 1.
    class Part1
      def run(input, expected_total)
        buckets = parse_lines(input)
        combinations(buckets, expected_total).flatten(1).length
      end

      private

      def parse_lines(input)
        input.lines.map { |line| line.strip.to_i unless line.strip.empty? }.compact
      end

      def combinations(buckets, expected_total)
        1.upto(buckets.size).map do |i|
          buckets.combination(i).find_all { |a| a.inject(0, :+) == expected_total }
        end
      end
    end
  end
end
