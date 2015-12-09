require 'spec_helper'
require 'adventofcode/day_4/part_2'

RSpec.describe(AdventOfCode::Day4::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_4.txt') }

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(9_962_624)
    end
  end
end
