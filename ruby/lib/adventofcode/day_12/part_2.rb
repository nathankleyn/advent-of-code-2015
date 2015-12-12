require 'json'

module AdventOfCode
  module Day12
    # Solution to the exercise from Day 12 (http://adventofcode.com/day/12).
    # This is part 2.
    class Part2
      def run(input)
        count_numbers(JSON.parse(input))
      end

      private

      def count_numbers(item)
        if item.is_a?(Fixnum)
          item
        elsif item.is_a?(Hash)
          count_hash(item)
        elsif item.is_a?(Array)
          item.inject(0) { |a, e| a + count_numbers(e) }
        else
          0
        end
      end

      def count_hash(hash)
        hash.inject(0) do |acc, (k, v)|
          return 0 if k == 'red' || v == 'red'
          acc + count_numbers(v)
        end
      end
    end
  end
end
