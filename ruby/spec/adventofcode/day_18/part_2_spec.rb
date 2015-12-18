require 'spec_helper'
require 'adventofcode/day_18/part_2'

RSpec.describe(AdventOfCode::Day18::Part2) do
  describe('#run') do
    let(:test_input) do
      %(
        ##.#.#
        ...##.
        #....#
        ..#...
        #.#..#
        ####.#
      )
    end
    let(:challenge_input) { load_fixture('day_18.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(test_input, 5)).to eql(17)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input, 100)).to eql(924)
    end
  end
end
