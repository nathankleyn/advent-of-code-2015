module AdventOfCode
  module Day18
    # Solution to the exercise from Day 18 (http://adventofcode.com/day/18).
    # This is part 1.
    class Part1
      def run(input, steps)
        steps.times.inject(parse_lines(input)) do |acc, _|
          transform(acc)
        end.flatten.count(&:itself)
      end

      private

      def parse_lines(input)
        input.lines.map do |line|
          next if line.strip.empty?
          line.strip.chars.map { |c| c == '#' }
        end.compact
      end

      def transform(rows)
        max_y = rows.length - 1
        rows.map.with_index do |row, y|
          max_x = row.length - 1
          row.map.with_index { |cell_on, x| set_on?(cell_on, neighbours_on(x, y, max_x, max_y, rows)) }
        end
      end

      def neighbours_on(x, y, max_x, max_y, rows)
        coords_in_square(x, y, max_x, max_y)
          .reject { |(n_x, n_y)| n_x == x && n_y == y }
          .count { |(n_x, n_y)| rows[n_y][n_x] }
      end

      def set_on?(cell_on, neighbours_on_count)
        (cell_on && [2, 3].include?(neighbours_on_count)) || neighbours_on_count == 3
      end

      def coords_in_square(x, y, max_x, max_y)
        x_start = [0, x - 1].max
        x_end = [x + 1, max_x].min
        y_start = [0, y - 1].max
        y_end = [y + 1, max_y].min

        (x_start..x_end).to_a.product((y_start..y_end).to_a)
      end
    end
  end
end
