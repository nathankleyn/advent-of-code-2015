module AdventOfCode
  module Day6
    # Solution to the exercise from Day 6 (http://adventofcode.com/day/6).
    # This is part 1.
    class Part1
      MATRIX_DIMENSION = 1000

      def run(input)
        lights = lights_matrix_from_input(input)
        lights.inject(0) { |a, e| a + e.count { |x| x } }
      end

      private

      def lights_matrix_from_input(input)
        input.lines.each_with_object(create_matrix) do |line, acc|
          x_range, y_range = line_to_ranges(line)
          lens = lens_for_line(line)

          x_range.each do |x|
            y_range.each { |y| acc[x][y] = lens.call(acc[x][y]) }
          end
        end
      end

      def create_matrix
        Array.new(MATRIX_DIMENSION) { Array.new(MATRIX_DIMENSION) }
      end

      def line_to_ranges(line)
        scanner = line.scan(/([0-9]{1,3},[0-9]{1,3})/)
        start_range, end_range = scanner.map do |range|
          range.first.split(',').map(&:to_i)
        end

        [(start_range.first..end_range.first), (start_range[1]..end_range[1])]
      end

      def lens_for_line(line)
        case line
        when /^turn on/ then ->(_) { true }
        when /^turn off/ then ->(_) { false }
        when /^toggle/ then ->(x) { !x }
        end
      end
    end
  end
end
