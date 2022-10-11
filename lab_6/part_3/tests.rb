# frozen_string_literal: true

require_relative 'main'

describe 'minmax' do
  context 'y = x^2' do
    before(:each) do
      @result = minmax(-2, 2) { |x| x**2 }
    end
    it 'should be equal to 0' do
      expect(@result[0]).to be_within(1e-3).of(0)
    end

    it 'should be equal to 4' do
      expect(@result[1]).to be_within(1e-3).of(4)
    end
  end
end
