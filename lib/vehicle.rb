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
end
