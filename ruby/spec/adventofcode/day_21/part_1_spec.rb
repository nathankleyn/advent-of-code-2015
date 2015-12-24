require 'spec_helper'
require 'adventofcode/day_21/part_1'

RSpec.describe(AdventOfCode::Day21::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_21.txt') }

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(91)
    end
  end
end
