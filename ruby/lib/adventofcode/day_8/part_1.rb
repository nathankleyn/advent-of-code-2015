module AdventOfCode
  module Day8
    # Solution to the exercise from Day 8 (http://adventofcode.com/day/8).
    # This is part 1.
    class Part1
      def run(input)
        input.lines.inject(0) do |acc, line|
          code_len = line.strip.length
          actual_len = eval(line.strip + '.length')

          acc + code_len - actual_len
        end
      end
    end
  end
end
