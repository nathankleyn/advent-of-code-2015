require 'spec_helper'
require 'adventofcode/day_2/part_1'

RSpec.describe(AdventOfCode::Day2::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_2.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('2x3x4')).to eql(58)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('1x1x10')).to eql(43)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(1588178)
    end
  end
end
