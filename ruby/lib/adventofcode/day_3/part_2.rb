require_relative 'delivery_job'

module AdventOfCode
  module Day3
    # Solution to the exercise from Day 3 (http://adventofcode.com/day/3).
    # This is part 2.
    class Part2
      def run(input)
        tokens = input.strip.chars
        jobs = tokens.each_with_index.each_with_object(
          santa: DeliveryJob.new,
          robo_santa: DeliveryJob.new
        ) do |(token, i), acc|
          job = acc[(i.even? ? :santa : :robo_santa)]
          consume_token(job, token)
        end

        houses_delivered_to(jobs)
      end

      private

      def consume_token(job, token)
        case token
        when '>' then job.move_right
        when '<' then job.move_left
        when '^' then job.move_up
        when 'v' then job.move_down
        end
      end

      def houses_delivered_to(jobs)
        (jobs[:santa].presents | jobs[:robo_santa].presents).size
      end
    end
  end
end
