require 'spec_helper'
require 'adventofcode/day_6/part_2'

RSpec.describe(AdventOfCode::Day6::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_6.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('turn on 0,0 through 0,0')).to eql(1)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('toggle 0,0 through 999,999')).to eql(2_000_000)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(17_836_115)
    end
  end
end
