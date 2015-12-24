require_relative 'part_1'

module AdventOfCode
  module Day21
    # Solution to the exercise from Day 21 (http://adventofcode.com/day/21).
    # This is part 2.
    class Part2 < Part1
      def run(input)
        boss_stats = parse_lines(input)
        STAT_COMBOS.reject do |stats|
          player_would_win?(boss_stats, [PLAYER_HIT_POINTS, stats[1], stats[2]])
        end.max_by(&:first).first
      end
    end
  end
end
