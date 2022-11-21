# frozen_string_literal: true

require_relative 'automobile'

first_car = BaseAutomobile.new(1990, 20_000)

first_car.show_year
first_car.show_mileage
puts first_car.mean_mileage_per_year

second_car = Automobile.new('12xxx3', 'BMW', 1990, 20_000, 'Malahov')
second_car.show_license
second_car.show_brand
second_car.show_year
second_car.show_mileage
second_car.show_owner_last_name
second_car.show_mean_mileage_per_year
