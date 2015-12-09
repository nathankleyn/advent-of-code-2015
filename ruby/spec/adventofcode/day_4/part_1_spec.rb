require 'spec_helper'
require 'adventofcode/day_4/part_1'

RSpec.describe(AdventOfCode::Day4::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_4.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('abcdef')).to eql(609_043)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('pqrstuv')).to eql(1_048_970)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(282_749)
    end
  end
end
