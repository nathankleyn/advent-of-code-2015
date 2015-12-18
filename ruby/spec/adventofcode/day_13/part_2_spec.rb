require 'spec_helper'
require 'adventofcode/day_13/part_2'

RSpec.describe(AdventOfCode::Day13::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_13.txt') }

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(725)
    end
  end
end
