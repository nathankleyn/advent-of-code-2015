require 'spec_helper'
require 'adventofcode/day_8/part_2'

RSpec.describe(AdventOfCode::Day8::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_8.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('""')).to eql(4)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('"abc"')).to eql(4)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('"aaa\"aaa"')).to eql(6)
    end

    it('returns the correct answer for example four') do
      expect(subject.run('"\x27"')).to eql(5)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(2_085)
    end
  end
end
