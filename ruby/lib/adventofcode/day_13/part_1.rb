module AdventOfCode
  module Day13
    # Solution to the exercise from Day 13 (http://adventofcode.com/day/13).
    # This is part 1.
    class Part1
      def run(input)
        outcomes = parse_lines(input)
        outcomes.keys.permutation(outcomes.keys.length).map { |table| scores_for_table(table, outcomes) }.max
      end

      private

      def parse_lines(input)
        input.lines.each_with_object(Hash.new { |h, k| h[k] = {} }) do |line, acc|
          next if line.strip.empty?
          subject, neighbour, happiness = parse_line(line)
          acc[subject][neighbour] = happiness
        end
      end

      def parse_line(line)
        match = line.strip.match(/\A(\w+) would (gain|lose) (\d+) happiness units by sitting next to (\w+).\z/)
        fail("Given line does not match expected format: #{line}") unless match

        subject = match[1]
        neighbour = match[4]
        happiness = match[3].to_i * (match[2] == 'gain' ? 1 : -1)

        [subject, neighbour, happiness]
      end

      def scores_for_table(table, outcomes)
        (table + [table.first]).each_cons(2).map { |pair| score_for_pair(outcomes, *pair) }.inject(0, :+)
      end

      def score_for_pair(outcomes, left, right)
        outcomes[left][right] + outcomes[right][left]
      end
    end
  end
end
