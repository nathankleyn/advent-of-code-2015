require 'spec_helper'
require 'adventofcode/day_20/part_2'

RSpec.describe(AdventOfCode::Day20::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_20.txt').to_i }

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(0)
    end
  end
end
