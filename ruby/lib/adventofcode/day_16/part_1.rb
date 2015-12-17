module AdventOfCode
  module Day16
    # Solution to the exercise from Day 16 (http://adventofcode.com/day/16).
    # This is part 1.
    class Part1
      def run(mfcsam_input, raw_people)
        people = parse_lines(raw_people)
        people.each_with_index
          .find_all { |(person, _)| person.each_pair.all? { |k, v| matches_attr(mfcsam_input, k, v) } }
          .map { |(_, i)| i + 1 }
          .first
      end

      private

      def parse_lines(input)
        input.lines.map { |line| parse_line(line) }.compact
      end

      def parse_line(line)
        nil if line.strip.empty?
        line.strip.scan(/([a-z]+): (-?\d+)/).map { |(k, v)| [k.to_sym, v.to_i] }.to_h
      end

      def matches_attr(mfcsam_input, key, value)
        mfcsam_input[key] == value
      end
    end
  end
end
