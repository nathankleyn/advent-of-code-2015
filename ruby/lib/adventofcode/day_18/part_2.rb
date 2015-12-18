require_relative 'part_1'

module AdventOfCode
  module Day18
    # Solution to the exercise from Day 18 (http://adventofcode.com/day/18).
    # This is part 2.
    class Part2 < Part1
      private

      def parse_lines(input)
        super(input).tap { |r| lock_corners(r) }
      end

      def transform(rows)
        super(rows).tap { |r| lock_corners(r) }
      end

      def lock_corners(rows)
        max_x = rows.first.length - 1
        max_y = rows.length - 1

        # Set all the corner values to true for the next round.
        rows[0][0] = true
        rows[0][max_x] = true
        rows[max_y][0] = true
        rows[max_y][max_x] = true
      end
    end
  end
end
