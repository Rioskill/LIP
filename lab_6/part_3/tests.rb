# frozen_string_literal: true

require_relative 'analyzer'

describe Analyzer do
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

  context 'y = (x - 1) / (x + 2)' do
    let(:result) { Analyzer.minmax(0, 2) { |x| (x - 1) / (x + 2) } }

    it 'should be equal to -0.5' do
      expect(result[0]).to be_within(1e-3).of(-0.5)
    end

    it 'should be equal to 0.25' do
      expect(result[1]).to be_within(1e-3).of(0.25)
    end
  end

  context 'y = sin(x / 2 - 1)' do
    let(:result) { Analyzer.minmax(-1, 1) { |x| Math.sin(x / 2 - 1) } }

    it 'should be equal to -0.997' do
      expect(result[0]).to be_within(1e-3).of(-0.997)
    end

    it 'should be equal to -0.479' do
      expect(result[1]).to be_within(1e-3).of(-0.479)
    end
  end
end
