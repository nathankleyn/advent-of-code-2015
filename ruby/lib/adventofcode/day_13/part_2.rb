require_relative 'part_1'

module AdventOfCode
  module Day13
    # Solution to the exercise from Day 13 (http://adventofcode.com/day/13).
    # This is part 2.
    class Part2 < Part1
      def run(input)
        super(input + "\n" + extra_lines)
      end

      private

      def extra_lines
        %w(Alice Bob Carol David Eric Frank George Mallory).flat_map do |name|
          %(
            #{name} would gain 0 happiness units by sitting next to Nathan.
            Nathan would gain 0 happiness units by sitting next to #{name}.
          )
        end.join("\n")
      end
    end
  end
end
