require('pry')

class Dealership
  @@dealerships = []

  attr_reader(:name, :cars, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @cars = []
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

  define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end

  define_singleton_method(:find) do |id|
    found_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.id().eql?(id.to_i())
        found_dealership = dealership
      end
    end
    found_dealership
  end
 end
