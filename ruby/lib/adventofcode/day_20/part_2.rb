module AdventOfCode
  module Day20
    # Solution to the exercise from Day 20 (http://adventofcode.com/day/20).
    # This is part 2.
    class Part2
      def run(input)
        houses(input).take_while { |presents| presents < input }.length + 1
      end

      private

      def houses(max_score)
        1.upto(max_score / 11).each_with_object([]) do |i, acc|
          (i..max_score / 11).step(i).take(50).each do |j|
            acc[j - 1] ||= 0
            acc[j - 1] += i * 11
          end
        end
      end
    end
  end
end
