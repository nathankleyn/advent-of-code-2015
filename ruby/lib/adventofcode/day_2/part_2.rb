module AdventOfCode
  module Day2
    # Solution to the exercise from Day 2 (http://adventofcode.com/day/2).
    # This is part 2.
    class Part2
      def run(input)
        input.lines.inject(0) do |acc, line|
          dims = line.strip.split('x').map(&:to_i)
          length, width, height = dims
          ribbon_length = dims.min(2).inject(:+) * 2
          bow_length = (length * width * height)

          acc + ribbon_length + bow_length
        end
      end
    end
  end
end
