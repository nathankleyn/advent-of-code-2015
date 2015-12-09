module AdventOfCode
  module Day8
    # Solution to the exercise from Day 8 (http://adventofcode.com/day/8).
    # This is part 2.
    class Part2
      def run(input)
        input.lines.inject(0) do |acc, line|
          code_len = line.strip.length
          encoded_len = line.strip.inspect.length

          acc + encoded_len - code_len
        end
      end
    end
  end
end
