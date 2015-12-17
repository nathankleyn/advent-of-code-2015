require 'spec_helper'
require 'adventofcode/day_17/part_1'

RSpec.describe(AdventOfCode::Day17::Part1) do
  describe('#run') do
    let(:test_input) { %w(20 15 10 5 5).join("\n") }
    let(:challenge_input) { load_fixture('day_17.txt') }

    it('returns the correct answer for example one') do
      expect(subject.run(test_input, 25)).to eql(4)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input, 150)).to eql(1_304)
    end
  end
end
