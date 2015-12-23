require 'set'

module AdventOfCode
  module Day19
    # Solution to the exercise from Day 19 (http://adventofcode.com/day/19).
    # This is part 1.
    class Part1
      def run(input, medicine)
        conversions = parse_lines(input)
        replace_elements(conversions, medicine).length
      end

      private

      def parse_lines(input)
        input.lines.each_with_object(Hash.new { |h, k| h[k] = [] }) do |line, acc|
          line.scan(/(\w+) => (\w+)/).each { |(k, v)| acc[k] << v }
        end
      end

      def replace_elements(conversions, medicine)
        conversions.each_pair.each_with_object(Set.new) do |(element, replacements), acc|
          medicine.scan(element) do
            offset = Regexp.last_match.offset(0).first
            head = medicine[0...offset]
            tail = medicine[offset + element.size..-1]

            replacements.each do |replacement|
              acc << "#{head}#{replacement}#{tail}"
            end
          end
        end
      end
    end
  end
end
