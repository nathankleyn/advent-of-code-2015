module AdventOfCode
  module Day2
    # Solution to the exercise from Day 2 (http://adventofcode.com/day/2).
    # This is part 1.
    class Part1
      def run(input)
        input.lines.inject(0) do |acc, line|
          length, width, height = line.strip.split('x').map(&:to_i)
          sides = [length * width, width * height, height * length]
          slack = sides.min

          acc + sides.inject(0) { |a, e| a + (e * 2) } + slack
        end
      end
    end
  end
end
