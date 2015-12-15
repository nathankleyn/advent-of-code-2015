module AdventOfCode
  module Day15
    # Solution to the exercise from Day 15 (http://adventofcode.com/day/15).
    # This is part 1.
    class Part1
      def run(input)
        # We don't want to take the calories, which is the final property,
        # so we drop it here
        props = parse_lines(input).transpose[0..-2]

        # For each possible makeup, we calculate the score until we have all
        # the possible scores for all the possible makups.
        #
        # Now we take the biggest score and that's out answer!
        scores_for_props(props).max
      end

      private

      def parse_lines(input)
        input.lines.map { |line| parse_line(line) }.compact
      end

      def parse_line(line)
        tokens = line.strip.scan(/(-?\d+)/).map(&:first)
        return nil if tokens.size != 5
        tokens.map(&:to_i)
      end

      def compositions(n)
        100.times.to_a.repeated_permutation(n).reject { |a| a.inject(0, :+) != 100 }
      end

      def scores_for_props(props)
        compositions(props.first.length).map do |composition|
          props.inject(1) { |a, e| a * score_for_prop(composition, e) }
        end
      end

      def score_for_prop(composition, prop)
        score = prop.each_with_index.inject(0) { |acc, (v, i)| acc + v * composition[i] }
        [0, score].max
      end
    end
  end
end
