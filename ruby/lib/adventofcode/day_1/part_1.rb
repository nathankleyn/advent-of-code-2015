module AdventOfCode
  module Day1
    # Solution to the exercise from Day 1 (http://adventofcode.com/day/1).
    # This is part 1.
    class Part1
      def run(input)
        input.strip.chars.inject(0) do |acc, token|
          acc + (token == '(' ? 1 : -1)
        end
      end
    end
  end
end
