require 'spec_helper'
require 'adventofcode/day_12/part_1'

RSpec.describe(AdventOfCode::Day12::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_12.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('[1,2,3]')).to eql(6)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('{"a":2,"b":4}')).to eql(6)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('[[[3]]]')).to eql(3)
    end

    it('returns the correct answer for example four') do
      expect(subject.run('{"a":{"b":4},"c":-1}')).to eql(3)
    end

    it('returns the correct answer for example five') do
      expect(subject.run('{"a":[-1,1]}}')).to eql(0)
    end

    it('returns the correct answer for example six') do
      expect(subject.run('[-1,{"a":1}]')).to eql(0)
    end

    it('returns the correct answer for example seven') do
      expect(subject.run('[]')).to eql(0)
    end

    it('returns the correct answer for example eight') do
      expect(subject.run('{}')).to eql(0)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(191_164)
    end
  end
end
