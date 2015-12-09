require 'spec_helper'
require 'adventofcode/day_5/part_1'

RSpec.describe(AdventOfCode::Day5::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_5.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('ugknbfddgicrmopn')).to eql(1)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('aaa')).to eql(1)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('jchzalrnumimnmhp')).to eql(0)
    end

    it('returns the correct answer for example four') do
      expect(subject.run('haegwjzuvuyypxyu')).to eql(0)
    end

    it('returns the correct answer for example five') do
      expect(subject.run('dvszwmarrgswjxmb')).to eql(0)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(255)
    end
  end
end
