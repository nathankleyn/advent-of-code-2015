require 'set'

module AdventOfCode
  module Day19
    # Solution to the exercise from Day 19 (http://adventofcode.com/day/19).
    # This is part 2.
    class Part2
      def run(input, medicine)
        conversions = parse_lines(input)
        reduce_medicine(conversions, medicine.reverse, 1, Set.new) - 1
      end

      private

      def parse_lines(input)
        input.lines.flat_map do |line|
          # Note carefully that we are swapping the Hash around here.
          line.scan(/(\w+) => (\w+)/i).map { |(v, k)| [k.reverse, v.reverse] }
        end
      end

      def reduce_medicine(conversions, medicine, iterations, seen)
        return nil if seen.include?(medicine)
        return iterations if medicine == 'e'
        seen << medicine

        conversions.each do |(element, replacement)|
          next unless medicine.include?(element)
          new_iters = reduce_medicine(conversions, medicine.sub(element, replacement), iterations + 1, seen)
          return new_iters unless new_iters.nil?
        end

        nil
      end
    end
  end
end
