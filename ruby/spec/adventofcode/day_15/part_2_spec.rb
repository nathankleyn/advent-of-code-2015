require 'spec_helper'
require 'adventofcode/day_15/part_2'

RSpec.describe(AdventOfCode::Day15::Part2) do
  describe('#run') do
    let(:test_input) do
      %(
        Butterscotch: capacity -1, durability -2, flavor 6, texture 3, calories 8
        Cinnamon: capacity 2, durability 3, flavor -2, texture -1, calories 3
      )
    end
    let(:challenge_input) { load_fixture('day_15.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(test_input)).to eql(57_600_000)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(11_171_160)
    end
  end
end
