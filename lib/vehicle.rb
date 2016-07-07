require('pry')

class Vehicle
  @@vehicles = []

  attr_reader(:make, :model, :year, :id)

  define_method(:initialize) do |attributes|
    @make = attributes.fetch(:make)
    @model = attributes.fetch(:model)
    @year =  attributes.fetch(:year)
    @id = @@vehicles.length().+(1)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_singleton_method(:find) do |id|
    found_vehicle = nil
    @@vehicles.each() do |vehicle|
      if vehicle.id().eql?(id.to_i())
        found_vehicle = vehicle
      end
    end
    found_vehicle
  end
end
