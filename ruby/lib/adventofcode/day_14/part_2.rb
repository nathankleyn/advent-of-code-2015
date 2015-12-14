module AdventOfCode
  module Day14
    # Solution to the exercise from Day 14 (http://adventofcode.com/day/14).
    # This is part 2.
    class Part2
      def run(input, duration)
        reindeer = parse_lines(input)
        speeds_by_second = reindeer.map { |enum| enum.take(duration) }
        calculate_results(duration, reindeer, speeds_by_second)
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

      def calculate_results(duration, reindeer, speeds_by_second)
        results = duration.times.each_with_object(
          points: Array.new(reindeer.length, 0),
          positions: Array.new(reindeer.length, 0)
        ) do |i, acc|
          reindeer.length.times { |j| acc[:positions][j] += speeds_by_second[j][i] }
          max_distance = acc[:positions].max
          reindeer.length.times { |j| acc[:points][j] += 1 if acc[:positions][j] == max_distance }
        end

        results[:points].max
      end
    end
  end
end
