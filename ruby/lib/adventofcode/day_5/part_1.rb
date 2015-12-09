module AdventOfCode
  module Day5
    # Solution to the exercise from Day 5 (http://adventofcode.com/day/5).
    # This is part 1.
    class Part1
      def run(input)
        input.lines.count do |line|
          line.gsub(/[^aeiou]/i, '').length >= 3 &&
            line.match(/([a-z])\1/i) &&
            !line.match(/(?:ab|cd|pq|xy)/)
        end
      end
    end
  end
end
