require 'spec_helper'
require 'adventofcode/day_12/part_2'

RSpec.describe(AdventOfCode::Day12::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_12.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run('[1,2,3]')).to eql(6)
    end

    it('returns the correct answer for example two') do
      expect(subject.run('[1,{"c":"red","b":2},3]')).to eql(4)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('{"d":"red","e":[1,2,3,4],"f":5}')).to eql(0)
    end

    it('returns the correct answer for example four') do
      expect(subject.run('[1,"red",5]')).to eql(6)
    end

    it('ignores object with "red" in it that have nested good objects') do
      expect(subject.run('{"a":"red","b":{"c":2}}')).to eql(0)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input)).to eql(87_842)
    end
  end
end
