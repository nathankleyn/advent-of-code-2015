require 'spec_helper'
require 'adventofcode/day_7/part_2'

RSpec.describe(AdventOfCode::Day7::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_7.txt') }

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to include(a: 40149)
    end
  end
end
