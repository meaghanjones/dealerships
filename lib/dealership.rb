require('pry')

class Dealership
  @@dealerships = []

  attr_reader(:name, :cars)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @cars = attributes.fetch(:cars)
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end
end
