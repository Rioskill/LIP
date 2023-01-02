# frozen_string_literal: true

require_relative 'calculator'

describe Calculator do
  context 'sin(1)' do
    it 'should be equal ~ 0.84147' do
      result = Calculator.sin(1)
      expect(result.first).to be_within(1e-3).of(0.84147)
    end
  end

  context 'sin(-0.5)' do
    it 'should be equal ~ -0.47942' do
      result = Calculator.sin(-0.5)
      expect(result.first).to be_within(1e-3).of(-0.47942)
    end
  end

  context 'sin(3)' do
    it 'should be equal ~ -0.47942' do
      result = Calculator.sin(-0.5)
      expect(result.first).to be_within(1e-3).of(-0.47942)
    end
  end

  context 'compare to Math.sin' do
    let!(:input) { rand }

    it 'should be equal to Math.sin' do
      result = Calculator.sin(input)
      expect(result.first).to be_within(1e-3).of(Math.sin(input))
    end
  end
end
