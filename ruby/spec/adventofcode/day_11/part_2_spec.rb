require 'spec_helper'
require 'adventofcode/day_11/part_2'

RSpec.describe(AdventOfCode::Day11::Part2) do
  describe('#run') do
    it('returns the correct answer for the challenge input') do
      expect(subject.run('hxbxxyzz')).to eql('hxcaabcc')
    end
  end
end
