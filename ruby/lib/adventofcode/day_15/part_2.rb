require_relative 'part_1'

module AdventOfCode
  module Day15
    # Solution to the exercise from Day 15 (http://adventofcode.com/day/15).
    # This is part 2.
    class Part2 < Part1
      def run(input)
        # For each possible makeup, we calculate the score until we have all
        # the possible scores for all the possible makups.
        #
        # Now we take the biggest score and that's out answer!
        scores_for_props(parse_lines(input).transpose).max
      end

      private

      def scores_for_props(props)
        compositions(props.first.length).each_with_object([]) do |composition, acc|
          # Unless the calories are 500, we skip this recipe.
          next unless score_for_prop(composition, props[-1]) == 500

          acc << props[0..-2].inject(1) do |inner_acc, prop|
            inner_acc * score_for_prop(composition, prop)
          end
        end
      end
    end
  end
end
