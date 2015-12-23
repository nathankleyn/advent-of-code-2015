require 'spec_helper'
require 'adventofcode/day_19/part_2'

RSpec.describe(AdventOfCode::Day19::Part2) do
  describe('#run') do
    let(:test_input) do
      %(
        e => H
        e => O
        H => HO
        H => OH
        O => HH
      )
    end
    let(:right_only_input) do
      %(
        e => Ca
        Al => SiTh
        F => SiAl
        Al => ThRnFAr
        Ca => PRnFAr
      )
    end
    let(:challenge_input) { load_fixture('day_19.txt') }
    let(:challenge_medicine_input) do
      'ORnPBPMgArCaCaCaSiThCaCaSiThCaCaPBSiRnFArRnFArCaCaSiThCaCaSiThCaCaCaCaCaCaSiRnFYFArSiRnMgArCaSiRnPTiTiBFYPBFArSiRnCaSiRnTiRnFArSiAlArPTiBPTiRnCaSiAlArCaPTiTiBPMgYFArPTiRnFArSiRnCaCaFArRnCaFArCaSiRnSiRnMgArFYCaSiRnMgArCaCaSiThPRnFArPBCaSiRnMgArCaCaSiThCaSiRnTiMgArFArSiThSiThCaCaSiRnMgArCaCaSiRnFArTiBPTiRnCaSiAlArCaPTiRnFArPBPBCaCaSiThCaPBSiThPRnFArSiThCaSiThCaSiThCaPTiBSiRnFYFArCaCaPRnFArPBCaCaPBSiRnTiRnFArCaPRnFArSiRnCaCaCaSiThCaRnCaFArYCaSiRnFArBCaCaCaSiThFArPBFArCaSiRnFArRnCaCaCaFArSiRnFArTiRnPMgArF'
    end

    it('returns the correct answer for example one') do
      expect(subject.run(test_input, 'HOH')).to eql(3)
    end

    it('returns the correct answer for example two') do
      expect(subject.run(test_input, 'HOHOHO')).to eql(6)
    end

    it('returns the correct answer for example four') do
      expect(subject.run(right_only_input, 'PRnSiThRnFArAr')).to eql(4)
    end

    it('returns the correct answer for the challenge input') do
      expect(subject.run(challenge_input, challenge_medicine_input)).to eql(207)
    end
  end
end
