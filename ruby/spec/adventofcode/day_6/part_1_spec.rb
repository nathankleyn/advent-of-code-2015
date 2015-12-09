require 'spec_helper'
require 'adventofcode/day_6/part_1'

RSpec.describe(AdventOfCode::Day6::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_6.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('turn on 0,0 through 999,999')).to eql(1_000_000)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('toggle 0,0 through 999,0')).to eql(1_000)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('turn off 499,499 through 500,500')).to eql(0)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(569_999)
    end
  end
end
