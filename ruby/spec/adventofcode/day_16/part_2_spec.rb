require 'spec_helper'
require 'adventofcode/day_16/part_2'

RSpec.describe(AdventOfCode::Day16::Part2) do
  describe('#run') do
    let(:challenge_input) { load_fixture('day_16.txt') }
    let(:mfcsam_input) do
      {
        children: 3,
        cats: 7,
        samoyeds: 2,
        pomeranians: 3,
        akitas: 0,
        vizslas: 0,
        goldfish: 5,
        trees: 3,
        cars: 2,
        perfumes: 1
      }
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(mfcsam_input, challenge_input)).to eql(323)
    end
  end
end
