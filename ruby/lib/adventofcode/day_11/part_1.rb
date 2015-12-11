module AdventOfCode
  module Day11
    # Solution to the exercise from Day 11 (http://adventofcode.com/day/11).
    # This is part 1.
    class Part1
      def run(input)
        passphrase = input.strip
        loop do
          passphrase = skip_known_failures(passphrase.next)
          return passphrase if allowed_passphrase?(passphrase)
        end
      end

      private

      # If the passphrase contains one of "i", "o" or "l", we should skip past
      # all the subsequent strings in the sequence that will also contain these
      # letters.
      def skip_known_failures(passphrase)
        passphrase.gsub(/[iol].+$/) { |m| m.chars.first.next + ('a' * m[1..-1].size) }
      end

      def allowed_passphrase?(passphrase)
        # Must include at least two non-overlappping pairs of a letter.
        passphrase.scan(/(\w)\1/).uniq.count >= 2 &&
          # Must include at least one sequence of three contiguous letters.
          ('a'..'z').to_a.each_cons(3).map(&:join).any? { |run| passphrase.include?(run) }
      end
    end
  end
end
