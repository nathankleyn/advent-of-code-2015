require 'spec_helper'
require 'adventofcode/day_1/part_2'

RSpec.describe(AdventOfCode::Day1::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_1.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(')')).to eql(1)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('()())')).to eql(5)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(1797)
    end
  end
end
