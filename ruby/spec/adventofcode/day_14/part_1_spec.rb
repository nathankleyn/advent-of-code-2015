require 'spec_helper'
require 'adventofcode/day_14/part_1'

RSpec.describe(AdventOfCode::Day14::Part1) do
  describe('#run') do
    let(:test_input) do
      %(
        Comet can fly 14 km/s for 10 seconds, but then must rest for 127 seconds.
        Dancer can fly 16 km/s for 11 seconds, but then must rest for 162 seconds.
      )
    end
    let(:challenge_input) { load_fixture('day_14.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(test_input, 1)).to eql(16)
    end

    it('returns the correct answer for example two') do
      expect(subject.run(test_input, 10)).to eql(160)
    end

    it('returns the correct answer for example three') do
      expect(subject.run(test_input, 11)).to eql(176)
    end

    it('returns the correct answer for example four') do
      expect(subject.run(test_input, 1_000)).to eql(1_120)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input, 2_503)).to eql(2_696)
    end
  end
end
