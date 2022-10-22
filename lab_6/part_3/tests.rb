# frozen_string_literal: true

require_relative 'analyzer'

describe 'minmax' do
  context 'y = x^2' do
    let(:result) { Analyzer.minmax(-2, 2) { |x| x**2 } }

    it 'should be equal to 0' do
      expect(result[0]).to be_within(1e-3).of(0)
    end

    it 'should be equal to 4' do
      expect(result[1]).to be_within(1e-3).of(4)
    end
  end

  context 'y = x^3' do
    let(:result) { Analyzer.minmax(-2, 2) { |x| x**3 } }

    it 'should be equal to -8' do
      expect(result[0]).to be_within(1e-3).of(-8)
    end

    it 'should be equal to 8' do
      expect(result[1]).to be_within(1e-3).of(8)
    end
  end
end
