# frozen_string_literal: true

require_relative 'main'

describe 'mySin()' do
  context 'sin(1)' do
    it 'should be equal ~ 0.84147' do
      result = mySin(1)
      expect(result).to be_within(1e-3).of(0.84147)
    end
  end

  context 'sin(-0.5)' do
    it 'should be equal ~ -0.47942' do
      result = mySin(-0.5)
      expect(result).to be_within(1e-3).of(-0.47942)
    end
  end
end
