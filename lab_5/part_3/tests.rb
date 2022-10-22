# frozen_string_literal: true

require 'faker'
require_relative 'correcter'

describe Correcter do
  context 'random sequence' do
    let!(:alphanumeric_word) { Faker::Alphanumeric.alpha(number: 10) }
    let!(:word_with_special_characters) do
      Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true)
    end
    let!(:word_starting_with_number) { rand(1..9).to_s + Faker::Alphanumeric.alphanumeric(number: 10) }

    it 'should not change' do
      word = alphanumeric_word
      result = Correcter.correct(word)
      expect(result).to eq(word)
    end

    it 'should not pass' do
      result = Correcter.correct(word_with_special_characters)
      expect(result).to be_empty
    end

    it 'should replace first character' do
      result = Correcter.correct(word_starting_with_number)
      expect(result[0]).to eq('_')
    end

    it 'should fully correct' do
      input = "#{alphanumeric_word} #{word_with_special_characters} #{word_starting_with_number}"
      result = "#{alphanumeric_word} _#{word_starting_with_number.slice(1..-1)}"

      expect(Correcter.correct(input)).to eq(result)
    end
  end
end
