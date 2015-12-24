require 'spec_helper'
require 'adventofcode/day_20/part_1'

RSpec.describe(AdventOfCode::Day20::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_20.txt').to_i }

    it('returns the correct answer for example one') do
      expect(subject.run(10)).to eql(1)
    end

    it('returns the correct answer for example two') do
      expect(subject.run(30)).to eql(2)
    end

    it('returns the correct answer for example three') do
      expect(subject.run(40)).to eql(3)
    end

    it('returns the correct answer for example four') do
      expect(subject.run(70)).to eql(4)
    end

    it('returns the correct answer for example five') do
      # Note that this returns 4 because it was the first house to have at least
      # this many presents.
      expect(subject.run(60)).to eql(4)
    end

    it('returns the correct answer for example six') do
      expect(subject.run(120)).to eql(6)
    end

    it('returns the correct answer for example seven') do
      # Note that this returns 6 because it was the first house to have at least
      # this many presents.
      expect(subject.run(80)).to eql(6)
    end

    it('returns the correct answer for example eight') do
      expect(subject.run(150)).to eql(8)
    end

    it('returns the correct answer for example nine') do
      # Note that this returns 6 because it was the first house to have at least
      # this many presents.
      expect(subject.run(130)).to eql(8)
    end

    it('returns the correct answer for a larger number') do
      expect(subject.run(420)).to eql(20)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(776_160)
    end
  end
end
