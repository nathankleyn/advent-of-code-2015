module AdventOfCode
  module Day5
    # Solution to the exercise from Day 5 (http://adventofcode.com/day/5).
    # This is part 2.
    class Part2
      def run(input)
        input.lines.count do |line|
          line.match(/([a-z][a-z]).*\1/i) && line.match(/([a-z]).\1/)
        end
      end
    end
  end
end
