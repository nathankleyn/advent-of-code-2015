require 'spec_helper'
require 'adventofcode/day_8/part_1'

RSpec.describe(AdventOfCode::Day8::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_8.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('""')).to eql(2)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('"abc"')).to eql(2)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('"aaa\"aaa"')).to eql(3)
    end

    it('returns the correct answer for example four') do
      expect(subject.run('"\x27"')).to eql(5)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(1_350)
    end
  end
end
