require 'spec_helper'
require 'adventofcode/day_10/part_2'

RSpec.describe(AdventOfCode::Day10::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_10.txt') }

    it('returns the correct answer for the challenge input') do
      output = 50.times.inject(challenge_input) do |input, _|
        subject.run(input)
      end

      expect(output.length).to eql(6_989_950)
    end
  end
end
