require 'spec_helper'
require 'adventofcode/day_1/part_1'

RSpec.describe(AdventOfCode::Day1::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_1.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('(())')).to eql(0)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('()()')).to eql(0)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('(((')).to eql(3)
    end

    it('returns the correct answer for example four') do
      expect(subject.run('(()(()(')).to eql(3)
    end

    it('returns the correct answer for example five') do
      expect(subject.run('))(((((')).to eql(3)
    end

    it('returns the correct answer for example six') do
      expect(subject.run('())')).to eql(-1)
    end

    it('returns the correct answer for example seven') do
      expect(subject.run('))(')).to eql(-1)
    end

    it('returns the correct answer for example eight') do
      expect(subject.run(')))')).to eql(-3)
    end

    it('returns the correct answer for example nine') do
      expect(subject.run(')())())')).to eql(-3)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(280)
    end
  end
end
