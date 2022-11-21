# frozen_string_literal: true

require_relative '../file_copier'

describe FileCopier do
  path = __dir__

  after(:each) do
    File.delete("#{path}/result.txt") if File.exist?("#{path}/result.txt")
  end

  it 'should create new file' do
    described_class.copy("#{path}/input.txt", "#{path}/result.txt")
    expect(File.exist?("#{path}/result.txt")).to be true
  end

  it 'should equal expected.txt' do
    described_class.copy("#{path}/input.txt", "#{path}/result.txt")
    expect(File.read("#{path}/result.txt")).to eq(File.read("#{path}/expected.txt"))
  end
end
