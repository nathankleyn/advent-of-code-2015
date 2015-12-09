module AdventOfCode
  module Day1
    # Solution to the exercise from Day 1 (http://adventofcode.com/day/1).
    # This is part 2.
    class Part2
      def run(input)
        input.strip.chars.each_with_index.inject(0) do |acc, (token, index)|
          (acc + (token == '(' ? 1 : -1)).tap do |level|
            return index + 1 if level == -1
          end
        end
      end
    end
  end
end
