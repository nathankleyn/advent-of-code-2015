require 'spec_helper'
require 'adventofcode/day_19/part_1'

RSpec.describe(AdventOfCode::Day19::Part1) do
  describe('#run') do
    let(:test_input) do
      %(
        H => HO
        H => OH
        O => HH
      )
    end
    let(:challenge_input) { load_fixture('day_19.txt') }
    let(:challenge_medicine_input) do
      'ORnPBPMgArCaCaCaSiThCaCaSiThCaCaPBSiRnFArRnFArCaCaSiThCaCaSiThCaCaCaCaCaCaSiRnFYFArSiRnMgArCaSiRnPTiTiBFYPBFArSiRnCaSiRnTiRnFArSiAlArPTiBPTiRnCaSiAlArCaPTiTiBPMgYFArPTiRnFArSiRnCaCaFArRnCaFArCaSiRnSiRnMgArFYCaSiRnMgArCaCaSiThPRnFArPBCaSiRnMgArCaCaSiThCaSiRnTiMgArFArSiThSiThCaCaSiRnMgArCaCaSiRnFArTiBPTiRnCaSiAlArCaPTiRnFArPBPBCaCaSiThCaPBSiThPRnFArSiThCaSiThCaSiThCaPTiBSiRnFYFArCaCaPRnFArPBCaCaPBSiRnTiRnFArCaPRnFArSiRnCaCaCaSiThCaRnCaFArYCaSiRnFArBCaCaCaSiThFArPBFArCaSiRnFArRnCaCaCaFArSiRnFArTiRnPMgArF'
    end

    it('returns the correct answer for example one') do
      expect(subject.run(test_input, 'HOH')).to eql(4)
    end

    it('returns the correct answer for example two') do
      expect(subject.run(test_input, 'HOHOHO')).to eql(7)
    end

    it('returns the correct answer for example three') do
      expect(subject.run('H => OO', 'H2O')).to eql(1)
    end

    it('returns the correct answer for examples with multi character elements in them') do
      expect(subject.run('He => Ho', 'HeHe')).to eql(2)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input, challenge_medicine_input)).to eql(576)
    end
  end
end
