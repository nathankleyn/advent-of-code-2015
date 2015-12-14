module AdventOfCode
  module Day14
    # Solution to the exercise from Day 14 (http://adventofcode.com/day/14).
    # This is part 1.
    class Part1
      def run(input, duration)
        reindeer = parse_lines(input)
        reindeer.map { |enum| enum.take(duration).inject(0, :+) }.max
      end

      private

      def parse_lines(input)
        input.lines.map { |line| parse_line(line) }.compact
      end

      def parse_line(line)
        tokens = line.strip.scan(/(\d+)/).map(&:first)
        return nil if tokens.size != 3
        speed, time, cooldown = tokens.map(&:to_i)

        Enumerator.new do |enum|
          loop do
            time.times { enum.yield(speed) }
            cooldown.times { enum.yield(0) }
          end
        end
      end
    end
  end
end
