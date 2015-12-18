require 'spec_helper'
require 'adventofcode/day_18/part_1'

RSpec.describe(AdventOfCode::Day18::Part1) do
  describe('#run') do
    let(:test_input) do
      %(
        .#.#.#
        ...##.
        #....#
        ..#...
        #.#..#
        ####..
      )
    end
    let(:challenge_input) { load_fixture('day_18.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(test_input, 4)).to eql(4)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input, 100)).to eql(814)
    end
  end
end
