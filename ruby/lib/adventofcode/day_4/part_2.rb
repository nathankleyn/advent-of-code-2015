require 'digest'

module AdventOfCode
  module Day4
    # Solution to the exercise from Day 4 (http://adventofcode.com/day/4).
    # This is part 2.
    class Part2
      def run(input)
        secret = input.strip
        i = 1

        loop do
          hash = Digest::MD5.hexdigest(secret + i.to_s)
          return i if hash.start_with?('000000')
          i += 1
        end
      end
    end
  end
end
