require 'spec_helper'
require 'adventofcode/day_10/part_1'

RSpec.describe(AdventOfCode::Day10::Part1) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_10.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('1')).to eql('11')
    end

    it('returns the correct answer for example two') do
      expect(subject.run('11')).to eql('21')
    end

    it('returns the correct answer for example three') do
      expect(subject.run('21')).to eql('1211')
    end

    it('returns the correct answer for example four') do
      expect(subject.run('1211')).to eql('111221')
    end

    it('returns the correct answer for example five') do
      expect(subject.run('111221')).to eql('312211')
    end

    it('returns the correct answer for the challenge input') do
      output = 40.times.inject(challenge_input) do |input, _|
        subject.run(input)
      end

      expect(output.length).to eql(492_982)
    end
  end
end
