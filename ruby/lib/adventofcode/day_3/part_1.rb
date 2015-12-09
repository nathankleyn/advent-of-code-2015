require_relative 'delivery_job'

module AdventOfCode
  module Day3
    # Solution to the exercise from Day 3 (http://adventofcode.com/day/3).
    # This is part 1.
    class Part1
      def run(input)
        tokens = input.strip.chars
        job = tokens.each_with_object(DeliveryJob.new) do |token, acc|
          case token
          when '>' then acc.move_right
          when '<' then acc.move_left
          when '^' then acc.move_up
          when 'v' then acc.move_down
          end
        end

        job.presents.size
      end
    end
  end
end
