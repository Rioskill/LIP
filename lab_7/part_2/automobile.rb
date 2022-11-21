# frozen_string_literal: true

require 'date'

# base Automobile class
class BaseAutomobile
  def initialize(year, mileage)
    @year = year
    @mileage = mileage
  end

  def show_year
    puts @year
  end

  def show_mileage
    puts @mileage
  end

  def mean_mileage_per_year
    lifetime = Date.today.year - @year
    @mileage / lifetime
  end
end

# full Automobile class
class Automobile < BaseAutomobile
  def initialize(license, brand, year, mileage, owner_last_name)
    super year, mileage
    @license = license
    @brand = brand
    @owner_last_name = owner_last_name
  end

  def show_license
    puts @license
  end

  def show_brand
    puts @brand
  end

  def show_owner_last_name
    puts @owner_last_name
  end

  def show_mean_mileage_per_year
    puts mean_mileage_per_year
  end
end
