require 'spec_helper'
require 'adventofcode/day_11/part_1'

RSpec.describe(AdventOfCode::Day11::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_11.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('abcdefgh')).to eql('abcdffaa')
    end

    it('returns the correct answer for example two') do
      expect(subject.run('ghijklmn')).to eql('ghjaabcc')
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql('hxbxxyzz')
    end
  end
end
