require_relative 'part_1'

module AdventOfCode
  module Day16
    # Solution to the exercise from Day 16 (http://adventofcode.com/day/16).
    # This is part 2.
    class Part2 < Part1
      private

      def matches_attr(mfcsam_input, key, value)
        case key
        when :cats, :trees then value > mfcsam_input[key]
        when :pomeranians, :goldfish then value < mfcsam_input[key]
        else mfcsam_input[key] == value
        end
      end
    end
  end
end
