require 'spec_helper'
require 'adventofcode/day_9/part_1'

RSpec.describe(AdventOfCode::Day9::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_9.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(%(
        London to Dublin = 464
        London to Belfast = 518
        Dublin to Belfast = 141
      ))).to eql(605)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(207)
    end
  end
end
