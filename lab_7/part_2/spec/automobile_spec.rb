# frozen_string_literal: true

require_relative '../automobile'

describe '#Automobile' do
  let(:base_car) { BaseAutomobile.new(1990, 20_000) }
  let(:full_car) { Automobile.new('12xxx3', 'BMW', 1990, 20_000, 'Malahov') }

  it 'should be true' do
    expect(Automobile.ancestors).to include(BaseAutomobile)
  end

  it 'should be a BaseAutomobile' do
    expect(base_car).to be_instance_of(BaseAutomobile)
  end

  it 'should be an Automobile' do
    expect(full_car).to be_instance_of(Automobile)
  end

  it 'should be inherited from BaseAutomoblie' do
    expect(full_car.class).to be < BaseAutomobile
  end

  it 'should have BaseAutomoblie as superclass' do
    expect(Automobile.superclass).to be BaseAutomobile
  end

  it 'should be equal to 625' do
    expect(base_car.mean_mileage_per_year).to eq(625)
  end

  it 'should output 1990' do
    expect { base_car.show_year }.to output("1990\n").to_stdout
  end

  it 'should output 20000' do
    expect { base_car.show_mileage }.to output("20000\n").to_stdout
  end

  it 'should output 12xxx3' do
    expect { full_car.show_license }.to output("12xxx3\n").to_stdout
  end

  it 'should output BMW' do
    expect { full_car.show_brand }.to output("BMW\n").to_stdout
  end

  it 'should output Malahov' do
    expect { full_car.show_owner_last_name }.to output("Malahov\n").to_stdout
  end

  it 'should output 625' do
    expect { full_car.show_mean_mileage_per_year }.to output("625\n").to_stdout
  end
end
