require('pry')

class Dealership
  @@dealerships = []

  attr_reader(:name, :cars, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @cars = attributes.fetch(:cars)
    @id=@@dealerships.length().+(1)
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_singleton_method(:all) do
    @@dealerships
  end
end
