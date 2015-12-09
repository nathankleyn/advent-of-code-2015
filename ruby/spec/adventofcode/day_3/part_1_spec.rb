require 'spec_helper'
require 'adventofcode/day_3/part_1'

RSpec.describe(AdventOfCode::Day3::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_3.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('>')).to eql(2)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('^>v<')).to eql(4)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('^v^v^v^v^v')).to eql(2)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(2572)
    end
  end
end
