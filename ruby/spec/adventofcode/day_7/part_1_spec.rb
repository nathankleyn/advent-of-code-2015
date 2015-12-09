require 'spec_helper'
require 'adventofcode/day_7/part_1'

RSpec.describe(AdventOfCode::Day7::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_7.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(%(
        123 -> x
        456 -> y
        x AND y -> d
        x OR y -> e
        x LSHIFT 2 -> f
        y RSHIFT 2 -> g
        NOT x -> h
        NOT y -> i
      ))).to eql(
        d: 72,
        e: 507,
        f: 492,
        g: 114,
        h: 65_412,
        i: 65_079,
        x: 123,
        y: 456
      )
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to include(a: 956)
    end
  end
end
