require 'spec_helper'
require 'adventofcode/day_5/part_2'

RSpec.describe(AdventOfCode::Day5::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_5.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('qjhvhtzxzqqjkmpb')).to eql(1)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('xxyxx')).to eql(1)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('uurcxstgmygtbstg')).to eql(0)
    end

    it('returns the correct answer for example four') do
      expect(subject.run('ieodomkazucvgmuy')).to eql(0)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(55)
    end
  end
end
